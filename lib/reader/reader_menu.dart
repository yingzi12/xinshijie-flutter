import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/foundation/screen.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/foundation/utility.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/widget/toast.dart';
import 'dart:async';

import 'package:xinshijie_flutter/public.dart';


class ReaderMenu extends StatefulWidget {
  final List<Chapter> chapters;
  final int articleIndex;
  final int wid;
  final int sid;

  final VoidCallback onTap;
  final VoidCallback onPreviousArticle;
  final VoidCallback onNextArticle;
  final void Function(Chapter chapter) onToggleChapter;

  ReaderMenu({
    required this.chapters,
    required this.articleIndex,
    required this.wid,
    required this.sid,
    required this.onTap,
    required this.onPreviousArticle,
    required this.onNextArticle,
    required this.onToggleChapter,
  });

  @override
  _ReaderMenuState createState() => _ReaderMenuState();
}

class _ReaderMenuState extends State<ReaderMenu> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  late double progressValue;
  bool isTipVisible = false;

  // 创建 GlobalKey 用于控制 Scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  initState() {
    super.initState();

    progressValue = this.widget.articleIndex / (this.widget.chapters.length - 1);
    animationController = AnimationController(duration: const Duration(milliseconds: 200), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(animationController);
    animation.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }

  @override
  void didUpdateWidget(ReaderMenu oldWidget) {
    super.didUpdateWidget(oldWidget);
    progressValue = this.widget.articleIndex / (this.widget.chapters.length - 1);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  hide() {
    animationController.reverse();
    Timer(Duration(milliseconds: 200), () {
      this.widget.onTap();
    });
    setState(() {
      isTipVisible = false;
    });
  }

  buildTopView(BuildContext context) {
    return Positioned(
      top: -Screen.navigationBarHeight * (1 - animation.value),
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(color: SQColor.paper, boxShadow: Styles.borderShadow),
        height: Screen.navigationBarHeight,
        padding: EdgeInsets.fromLTRB(5, Screen.topSafeHeight, 5, 0),
        child: Row(
          children: <Widget>[
            Container(
              width: 44,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('img/pub_back_gray.png'),
              ),
            ),
            Expanded(child: Container()),
            Container(
              width: 44,
              child: Image.asset('img/read_icon_voice.png'),
            ),
            Container(
              width: 44,
              child: Image.asset('img/read_icon_more.png'),
            ),
          ],
        ),
      ),
    );
  }

  int currentArticleIndex() {
    return ((this.widget.chapters.length - 1) * progressValue).toInt();
  }

  buildProgressTipView() {
    if (!isTipVisible) {
      return Container();
    }
    Chapter chapter = this.widget.chapters[currentArticleIndex()];
    double percentage = chapter.index / (this.widget.chapters.length - 1) * 100;
    return Container(
      decoration: BoxDecoration(color: Color(0xff00C88D), borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(chapter.title, style: TextStyle(color: Colors.white, fontSize: 16)),
          Text('${percentage.toStringAsFixed(1)}%', style: TextStyle(color: SQColor.lightGray, fontSize: 12)),
        ],
      ),
    );
  }

  previousArticle() {
    if (this.widget.articleIndex == 0) {
      Toast.show('已经是第一章了');
      return;
    }
    this.widget.onPreviousArticle();
    setState(() {
      isTipVisible = true;
    });
  }

  nextArticle() {
    if (this.widget.articleIndex == this.widget.chapters.length - 1) {
      Toast.show('已经是最后一章了');
      return;
    }
    this.widget.onNextArticle();
    setState(() {
      isTipVisible = true;
    });
  }

  buildProgressView() {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: previousArticle,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Image.asset('img/read_icon_chapter_previous.png'),
            ),
          ),
          Expanded(
            child: Slider(
              value: progressValue,
              onChanged: (double value) {
                setState(() {
                  isTipVisible = true;
                  progressValue = value;
                });
              },
              onChangeEnd: (double value) {
                Chapter chapter = this.widget.chapters[currentArticleIndex()];
                this.widget.onToggleChapter(chapter);
              },
              activeColor: SQColor.primary,
              inactiveColor: SQColor.gray,
            ),
          ),
          GestureDetector(
            onTap: nextArticle,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Image.asset('img/read_icon_chapter_next.png'),
            ),
          )
        ],
      ),
    );
  }

  buildBottomView() {
    return Positioned(
      bottom: -(Screen.bottomSafeHeight + 110) * (1 - animation.value),
      left: 0,
      right: 0,
      child: Column(
        children: <Widget>[
          buildProgressTipView(),
          Container(
            decoration: BoxDecoration(color: SQColor.paper, boxShadow: Styles.borderShadow),
            padding: EdgeInsets.only(bottom: Screen.bottomSafeHeight),
            child: Column(
              children: <Widget>[
                buildProgressView(),
                buildBottomMenus(),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildBottomMenus() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        buildBottomItem('目录', 'img/read_icon_catalog.png'),
        buildBottomItem('亮度', 'img/read_icon_brightness.png'),
        buildBottomItem('字体', 'img/read_icon_font.png'),
        buildBottomItem('设置', 'img/read_icon_setting.png'),
      ],
    );
  }

  // 构建侧边栏
  Drawer buildDrawer() {
    return Drawer(
      child: ListView.builder(
        itemCount: widget.chapters.length,
        itemBuilder: (BuildContext context, int index) {
          Chapter chapter = widget.chapters[index];
          return ListTile(
            title: Text(chapter.title),
            onTap: () {
              widget.onToggleChapter(chapter);
              Navigator.of(context).pop(); // 关闭侧边栏
            },
          );
        },
      ),
    );
  }

  // 修改 buildBottomItem 方法以处理目录点击
  buildBottomItem(String title, String icon) {
    return GestureDetector(
      onTap: () {
        if (title == '目录') {
          _scaffoldKey.currentState?.openDrawer(); // 使用 key 打开侧边栏
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 7),
        child: Column(
          children: <Widget>[
            Image.asset(icon),
            SizedBox(height: 5),
            Text(title, style: TextStyle(fontSize: Utility.fixedFontSize(12), color: SQColor.darkGray)),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // 设置 Scaffold 的 key
      drawer: buildDrawer(),
      body: Container(
        child: Stack(
          children: <Widget>[
            GestureDetector(
              onTapDown: (_) {
                hide();
              },
              child: Container(color: Colors.transparent),
            ),
            buildTopView(context),
            buildBottomView(),
          ],
        ),
      ),
    );
  }
}
