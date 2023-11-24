import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xinshijie_flutter/api/comment_api.dart';
import 'package:xinshijie_flutter/api/story_api.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/foundation/screen.dart';
import 'package:xinshijie_flutter/model/comment_entity.dart';
import 'package:xinshijie_flutter/model/story.dart';
import 'package:xinshijie_flutter/model/story_comment.dart';
import 'package:xinshijie_flutter/model/story_entity.dart';

import 'package:xinshijie_flutter/public.dart';

import 'story_detail_header.dart';
import 'story_summary_view.dart';
import 'story_detail_toolbar.dart';
import 'story_detail_recommend_view.dart';
import 'story_comment_cell.dart';

class StoryDetailPage extends StatefulWidget {
  final int wid;
  final int sid;

  StoryDetailPage(this.wid,this.sid);

  @override
  StoryDetailPageState createState() => StoryDetailPageState();
}

class StoryDetailPageState extends State<StoryDetailPage> with RouteAware {
  Story? story;
  List<Story> recommendStoryS = [];
  List<StoryComment> comments = [];
  ScrollController scrollController = ScrollController();
  double navAlpha = 0;
  bool isSummaryUnfold = false;
  int commentCount = 0;
  int commentMemberCount = 0;

  @override
  void initState() {
    super.initState();
    fetchData();

    scrollController.addListener(() {
      var offset = scrollController.offset;
      if (offset < 0) {
        if (navAlpha != 0) {
          setState(() {
            navAlpha = 0;
          });
        }
      } else if (offset < 50) {
        setState(() {
          navAlpha = 1 - (50 - offset) / 50;
        });
      } else if (navAlpha != 1) {
        setState(() {
          navAlpha = 1;
        });
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  changeSummaryMaxLines() {
    setState(() {
      isSummaryUnfold = !isSummaryUnfold;
    });
  }

  back() {
    Navigator.pop(context);
  }

  //获取世界详细
  fetchData() async {
    var wId = this.widget.wid;
    StoryEntity storyEntity= await StoryApi.getInfo(wId);
    // var storyResponse = await Request.post(action: 'story_detail', params: {'id': storyId});
    //停止
    List<CommentEntity>  commentList= await CommentApi.getList({'wid': wId.toString(),'source':1.toString()});
    // var commentsResponse = await Request.post(action: 'story_comment', params: {'id': storyId});
    List<StoryComment> comments = [];
    commentList.forEach((data) {
      comments.add(StoryComment.fromComment(data));
    });
    //推荐
    // var recommendResponse = await Request.post(action: 'story_recommend', params: {'id': wId});
    List<StoryEntity>  randomList= await StoryApi.getRandom({});

    List<Story> recommendStoryS = [];
    randomList.forEach((data) {
      recommendStoryS.add(Story.fromStoryEntity(data));
    });

    setState(() {
      this.story = Story.fromStoryEntity(storyEntity);
      this.comments = comments;
      this.recommendStoryS = recommendStoryS;
    });
  }

  Widget buildNavigationBar() {
    return Stack(
      children: <Widget>[
        Container(
          width: 44,
          height: Screen.navigationBarHeight,
          padding: EdgeInsets.fromLTRB(5, Screen.topSafeHeight, 0, 0),
          child: GestureDetector(onTap: back, child: Image.asset('img/pub_back_white.png')),
        ),
        Opacity(
          opacity: navAlpha,
          child: Container(
            decoration: BoxDecoration(color: SQColor.white, boxShadow: Styles.borderShadow),
            padding: EdgeInsets.fromLTRB(5, Screen.topSafeHeight, 0, 0),
            height: Screen.navigationBarHeight,
            child: Row(
              children: <Widget>[
                Container(
                  width: 44,
                  child: GestureDetector(onTap: back, child: Image.asset('img/pub_back_gray.png')),
                ),
                Expanded(
                  child: Text(
                    story!.name,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(width: 44),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildComment() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: <Widget>[
                Image.asset('img/home_tip.png'),
                SizedBox(width: 13),
                Text('书友评价', style: TextStyle(fontSize: 16)),
                Expanded(child: Container()),
                Image.asset('img/detail_write_comment.png'),
                Text('  写书评', style: TextStyle(fontSize: 14, color: SQColor.primary)),
                SizedBox(width: 15),
              ],
            ),
          ),
          Divider(height: 1),
          Column(
            children: comments.map((comment) => StoryCommentCell(comment)).toList(),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Text(
                '查看全部评论（${story!.commentCount}条）',
                style: TextStyle(fontSize: 14, color: SQColor.gray),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildTags() {
    var colors = [Color(0xFFF9A19F), Color(0xFF59DDB9), Color(0xFF7EB3E7)];
    var i = 0;
    var tagWidgets = story!.tags.map((tag) {
      var color = colors[i % 3];
      var tagWidget = Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(99, color.red, color.green, color.blue), width: 0.5),
          borderRadius: BorderRadius.circular(3),
        ),
        padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
        child: Text(tag, style: TextStyle(fontSize: 14, color: colors[i % 3])),
      );
      i++;
      return tagWidget;
    }).toList();
    return Container(
      padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
      color: SQColor.white,
      child: Wrap(runSpacing: 10, spacing: 10, children: tagWidgets),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (this.story == null) {
      return Scaffold(appBar: AppBar(elevation: 0));
    }
    var story = this.story!;
    return Scaffold(
      body: AnnotatedRegion(
        value: navAlpha > 0.5 ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    controller: scrollController,
                    padding: EdgeInsets.only(top: 0),
                    children: <Widget>[
                      StoryDetailHeader(story),
                      StorySummaryView(story.introduction, isSummaryUnfold, changeSummaryMaxLines),
                      StoryDetailCell(
                        iconName: 'img/detail_latest.png',
                        title: '最新',
                        subtitle: story.lastChapter?.title ?? '',
                        attachedWidget: Text(story.status, style: TextStyle(fontSize: 14, color: story.statusColor())), onTap: () {  },
                      ),
                      StoryDetailCell(
                        iconName: 'img/detail_chapter.png',
                        title: '元素列表',
                        subtitle: story.chapterCount != null ? '共${story.chapterCount}章' : '', onTap: () {
                          AppNavigator.pushElementList(context, story.id,story.name);
                      },
                      ),
                      StoryDetailCell(
                        iconName: 'img/detail_chapter.png',
                        title: '故事列表',
                        subtitle: story.chapterCount != null ? '共${story.chapterCount}章' : '', onTap: () {
                        AppNavigator.pushStoryList(context, story.id,story.name);
                      },
                      ),
                      buildTags(),
                      SizedBox(height: 10),
                      buildComment(),
                      SizedBox(height: 10),
                      StoryDetailRecommendView(recommendStoryS),
                    ],
                  ),
                ),
                StoryDetailToolbar(story),
              ],
            ),
            buildNavigationBar(),
          ],
        ),
      ),
    );
  }
}
class StoryDetailCell extends StatelessWidget {
  final String iconName;
  final String title;
  final String subtitle;
  final Widget? attachedWidget;
  final VoidCallback onTap;  // 点击事件的回调函数

  StoryDetailCell({
    required this.iconName,
    required this.title,
    required this.subtitle,
    this.attachedWidget,
    required this.onTap,  // 在构造函数中初始化
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(  // 使用 InkWell 来获得点击效果
      onTap: onTap,  // 将回调函数赋值给 onTap 属性
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  Image.asset(iconName),
                  SizedBox(width: 5),
                  Text(title, style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      subtitle,
                      style: TextStyle(fontSize: 14, color: SQColor.gray),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  attachedWidget != null ? attachedWidget! : Container(),
                  SizedBox(width: 10),
                  Image.asset('img/arrow_right.png'),
                ],
              ),
            ),
            Divider(height: 1),
          ],
        ),
      ),
    );
  }
}
