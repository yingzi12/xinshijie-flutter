import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xinshijie_flutter/api/chapter_api.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/foundation/screen.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/widget/toast.dart';
import 'package:xinshijie_flutter/model/chapter_entity.dart';
import 'package:xinshijie_flutter/model/chapter_single_entity.dart';
import 'dart:async';

import 'package:xinshijie_flutter/public.dart';

import 'reader_utils.dart';
import 'reader_config.dart';

import 'reader_page_agent.dart';
import 'reader_menu.dart';
import 'reader_view.dart';

enum PageJumpType { stay, firstPage, lastPage }

class ReaderChapterPage extends StatefulWidget {
  final int chapterId;
  final int sid;
  final int wid;

  ReaderChapterPage({required this.chapterId, required this.sid, required this.wid});

  @override
  ReaderChapterPageState createState() => ReaderChapterPageState();
}

class ReaderChapterPageState extends State<ReaderChapterPage> with RouteAware {
  int pageIndex = 0;
  bool isMenuVisible = false;
  PageController pageController = PageController(keepPage: false);
  bool isLoading = false;

  double topSafeHeight = 0;

  Article? preArticle;
  Article? currentArticle;
  Article? nextArticle;
  //限制频率
  Timer? _pageChangeTimer;

  List<Chapter> chapters = [];
  int currentChapterId = 0;

  @override
  void initState() {
    print("------------------main-------initState-----------------------------");
    super.initState();
    pageController.addListener(onScroll);

    setup();
  }

  @override
  void didChangeDependencies() {
    print("------------------main-------didChangeDependencies-----------------------------");
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute<dynamic>);
  }

  @override
  void didPop() {
    print("------------------main-------didPop-----------------------------");
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  @override
  void dispose() {
    print("------------------main-------dispose-----------------------------");
    pageController.dispose();
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  void setup() async {
    print(" setup  第一步");
    pageIndex = 0; // 添加这行代码来确保初始加载时pageIndex为第一页
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    await Future.delayed(const Duration(milliseconds: 100), () {});
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    topSafeHeight = Screen.topSafeHeight;

    List<ChapterSingleEntity> chaptersResponse = await ChapterApi.getList({"wid": widget.wid.toString(), "sid": widget.sid.toString()});

    chaptersResponse.forEach((data) {
      chapters.add(Chapter.fromJsonEntiry(data.id!.toInt(), data.title ?? "", 0));
    });

    // 初始化 currentArticle
    currentArticle = await fetchArticle(this.widget.chapterId);

    // 初始化 preArticle
    if (currentArticle!.preArticleId > 0) {
      preArticle = await fetchArticle(currentArticle!.preArticleId);
    } else {
      preArticle = null;
    }

    // 初始化 nextArticle
    if (currentArticle!.nextArticleId > 0) {
      nextArticle = await fetchArticle(currentArticle!.nextArticleId);
    } else {
      nextArticle = null;
    }

    // await resetContent(this.widget.chapterId, PageJumpType.stay);

    //初始化当前章节id
    currentChapterId = this.widget.chapterId;

    PageJumpType jumpType=  PageJumpType.firstPage;
    if (jumpType == PageJumpType.firstPage) {
      pageIndex = 0;
    } else if (jumpType == PageJumpType.lastPage) {
      pageIndex = currentArticle!.pageCount - 1;
    } else {
      // For PageJumpType.stay, no need to change pageIndex
      // pageIndex will not be updated, stays the same
    }
    setState(() {});
    // if (jumpType != PageJumpType.stay) {
    //   //跳转
    //   pageController.jumpToPage(  pageIndex);
    // }
  }

  resetContent(int articleId, PageJumpType jumpType) async {
    print("------------------main-------resetContent-----------------------------");
    currentArticle = await fetchArticle(articleId);
    if (currentArticle!.preArticleId > 0) {
      preArticle = await fetchArticle(currentArticle!.preArticleId);
    } else {
      preArticle = null;
    }
    if (currentArticle!.nextArticleId > 0) {
      nextArticle = await fetchArticle(currentArticle!.nextArticleId);
    } else {
      nextArticle = null;
    }
    if (jumpType == PageJumpType.firstPage) {
      pageIndex = 0;
    } else if (jumpType == PageJumpType.lastPage) {
      pageIndex = currentArticle!.pageCount - 1;
    } else {
      // For PageJumpType.stay, no need to change pageIndex
      // pageIndex will not be updated, stays the same
    }
    if (jumpType != PageJumpType.stay) {
      pageController.jumpToPage((preArticle != null ? preArticle!.pageCount : 0) + pageIndex);
    }
    setState(() {});
  }

  onScroll() {
    // print("------------------main-------onScroll-----------------------------");
    var page = pageController.offset / Screen.width;
    var nextArticlePage = currentArticle!.pageCount + (preArticle != null ? preArticle!.pageCount : 0);

    // print("Scrolling... Current page: $page, Next article page: $nextArticlePage");

    if (nextArticle != null && page >= nextArticlePage) {
      print("Scrolling.. nextArticle. Current page: $page, Next article page: $nextArticlePage");
      // 当向下翻页至下一篇文章时
      if (currentArticle!.nextArticleId > 0) {
        preArticle = currentArticle;
        currentArticle = nextArticle;
        nextArticle = null;
        pageIndex = 0; // 重置pageIndex为新文章的第一页
        fetchNextArticle(currentArticle!.nextArticleId);
        pageController.jumpToPage(preArticle!.pageCount); // 跳转到新文章的第一页
        currentChapterId = currentArticle!.id;
        setState(() {});
      } else {
        Toast.show('已经是最后一页了');
      }
    }

    if (preArticle != null && page < 0) {
      print("Scrolling.. preArticle. Current page: $page, Next article page: $nextArticlePage");

      if (currentArticle!.preArticleId > 0) {
        // 当向上翻页至前一篇文章时
        nextArticle = currentArticle;
        currentArticle = preArticle;
        preArticle = null;
        pageIndex = currentArticle!.pageCount - 1; // 设置pageIndex为前一文章的最后一页
        fetchPreviousArticle(currentArticle!.preArticleId);
        pageController.jumpToPage(
            currentArticle!.pageCount - 1); // 跳转到前一文章的最后一页
        currentChapterId = currentArticle!.id;
        setState(() {});
      }else {
        Toast.show('已经是第一页了');
      }
    } else if (preArticle == null && pageIndex == 0 && currentArticle!.preArticleId != 0) {
      print("Scrolling.. ---------. Current page: $page, Next article pageIndex: $pageIndex");

      fetchPreviousArticle(currentArticle!.preArticleId);
    }
  }


  fetchPreviousArticle(int articleId) async {
    print("-------------------------fetchPreviousArticle-----------------------------");
    print("Attempting to go to the fetchPreviousArticle $articleId");
    if ( isLoading || articleId <= 0) {
      return;
    }
    isLoading = true;
    preArticle = await fetchArticle(articleId);
    pageController.jumpToPage(preArticle!.pageCount + pageIndex);
    isLoading = false;
    setState(() {});
  }

  fetchNextArticle(int articleId) async {
    print("------------------main-------fetchNextArticle-----------------------------");
    print("Attempting to go to the fetchNextArticle $articleId");
    if ( isLoading || articleId <= 0) {
      return;
    }
    isLoading = true;
    nextArticle = await fetchArticle(articleId);
    isLoading = false;
    setState(() {});
  }

  Future<Article> fetchArticle(int chapterId) async {
    print("-------------------------fetchArticle-----------------------------");
    ChapterEntity chapter = await ChapterApi.getInfo(chapterId, this.widget.sid, this.widget.wid);
    var article = Article.fromChapter(chapter);
    var contentHeight = Screen.height - topSafeHeight - ReaderUtils.topOffset - Screen.bottomSafeHeight - ReaderUtils.bottomOffset - 20;
    var contentWidth = Screen.width - 15 - 10;
    article.pageOffsets = ReaderPageAgent.getPageOffsets(article.content, contentHeight, contentWidth, ReaderConfig.instance.fontSize);
    return article;
  }

  onTap(Offset position) async {
    print("-------------------------onTap-----------------------------");

    print("Attempting to go to the onTap $position");
    double xRate = position.dx / Screen.width;
    if (xRate > 0.33 && xRate < 0.66) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      setState(() {
        isMenuVisible = true;
      });
    } else if (xRate >= 0.66) {
      nextPage();
    } else {
      previousPage();
    }
  }

  previousPage() {
    print("-------------------------previousPage-----------------------------");

    print("Attempting to go to the previous page");
    if (pageIndex == 0 && currentArticle!.preArticleId == 0) {
      Toast.show('已经是第一页了');
      return;
    }
    pageController.previousPage(duration: Duration(milliseconds: 250), curve: Curves.easeOut);
  }

  nextPage() {
    print("-------------------------nextPage-----------------------------");
    print("Attempting to go to the next  page");
    if (pageIndex >= currentArticle!.pageCount - 1 && currentArticle!.nextArticleId == 0) {
      Toast.show('已经是最后一页了');
      return;
    }
    pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.easeOut);
  }


  Widget buildPage(BuildContext context, int index) {
    print("-----------------3--------buildPage-------------------------iddex:${index}----");

    // 确定当前页面是 preArticle, currentArticle 或 nextArticle 的哪一页
    // 这里的逻辑需要根据您的页面索引逻辑进行调整

    var article;
    int relativeIndex = index;
    if (preArticle != null && index < preArticle!.pageCount) {
      article = preArticle;
    } else if (index < (preArticle != null ? preArticle!.pageCount : 0) + currentArticle!.pageCount) {
      article = currentArticle;
      relativeIndex -= (preArticle != null ? preArticle!.pageCount : 0);
    } else {
      article = nextArticle;
      relativeIndex -= ((preArticle != null ? preArticle!.pageCount : 0) + currentArticle!.pageCount);
    }
    print("Building page index: $index, Article: ${article.title}, Page: $relativeIndex");

    return GestureDetector(
      onTapUp: (TapUpDetails details) {
        onTap(details.globalPosition);
      },
      child: ReaderView(article: article, page: relativeIndex, topSafeHeight: topSafeHeight),
    );
  }

  buildPageView() {
    print("--------------1-----------buildPageView-----------------------------");

    int itemCount = (preArticle != null ? preArticle!.pageCount : 0) + currentArticle!.pageCount + (nextArticle != null ? nextArticle!.pageCount : 0);
    return PageView.builder(
      physics: BouncingScrollPhysics(),
      controller: pageController,
      itemCount: itemCount,
      itemBuilder: buildPage,
      onPageChanged: onPageChanged,
    );
  }

  onPageChanged(int index) {
    print("-------------------------onPageChanged-----------------------------");

    _pageChangeTimer?.cancel(); // 取消之前的计时器
    _pageChangeTimer = Timer(Duration(milliseconds: 500), () {
      // 延迟500毫秒后执行回调
      var page = index - (preArticle != null ? preArticle!.pageCount : 0);
      if (page < currentArticle!.pageCount && page >= 0) {
        setState(() {
          pageIndex = page;
        });
      }
    });
  }

  buildMenu() {
    print("---------------2----------buildMenu-----------------------------");
    if (!isMenuVisible) {
      return Container();
    }
    return ReaderMenu(
      chapters: chapters,
      wid: widget.wid,
      sid: widget.sid,
      articleIndex: currentArticle!.index,
      onTap: hideMenu,
      onPreviousArticle: () {
        resetContent(currentArticle!.preArticleId, PageJumpType.firstPage);
      },
      onNextArticle: () {
        resetContent(currentArticle!.nextArticleId, PageJumpType.firstPage);
      },
      onToggleChapter: (Chapter chapter) {
        resetContent(chapter.id, PageJumpType.firstPage);
      },
    );
  }

  hideMenu() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    setState(() {
      this.isMenuVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentArticle == null) {
      return Scaffold();
    }
    print("-----------------------main---build-----------------------------");
    return Scaffold(
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.dark,
        child: Stack(
          children: <Widget>[
            Positioned(left: 0, top: 0, right: 0, bottom: 0, child: Image.asset('img/read_bg.png', fit: BoxFit.cover)),
            buildPageView(),
            buildMenu(),
          ],
        ),
      ),
    );
  }
}
