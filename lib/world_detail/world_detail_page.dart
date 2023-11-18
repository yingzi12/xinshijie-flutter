import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xinshijie_flutter/api/comment_api.dart';
import 'package:xinshijie_flutter/api/world_api.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/foundation/screen.dart';
import 'package:xinshijie_flutter/model/comment_entity.dart';
import 'package:xinshijie_flutter/model/world.dart';
import 'package:xinshijie_flutter/model/world_comment.dart';
import 'package:xinshijie_flutter/model/world_entity.dart';

import 'package:xinshijie_flutter/public.dart';

import 'world_detail_header.dart';
import 'world_summary_view.dart';
import 'world_detail_toolbar.dart';
import 'world_detail_recommend_view.dart';
import 'world_detail_cell.dart';
import 'world_comment_cell.dart';

class WorldDetailPage extends StatefulWidget {
  final int wId;

  WorldDetailPage(this.wId);

  @override
  WorldDetailPageState createState() => WorldDetailPageState();
}

class WorldDetailPageState extends State<WorldDetailPage> with RouteAware {
  World? world;
  List<World> recommendWorldS = [];
  List<WorldComment> comments = [];
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
    var wId = this.widget.wId;
    WorldEntity worldEntity= await WorldApi.getInfo(wId);
    // var worldResponse = await Request.post(action: 'world_detail', params: {'id': worldId});
    //停止
    List<CommentEntity>  commentList= await CommentApi.getList({'wid': wId.toString(),'source':1.toString()});
    // var commentsResponse = await Request.post(action: 'world_comment', params: {'id': worldId});
    List<WorldComment> comments = [];
    commentList.forEach((data) {
      comments.add(WorldComment.fromComment(data));
    });
    //推荐
    // var recommendResponse = await Request.post(action: 'world_recommend', params: {'id': wId});
    List<WorldEntity>  randomList= await WorldApi.getRandom({});

    List<World> recommendWorldS = [];
    randomList.forEach((data) {
      recommendWorldS.add(World.fromWorldEntity(data));
    });

    setState(() {
      this.world = World.fromWorldEntity(worldEntity);
      this.comments = comments;
      this.recommendWorldS = recommendWorldS;
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
                    world!.name,
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
            children: comments.map((comment) => WorldCommentCell(comment)).toList(),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Text(
                '查看全部评论（${world!.commentCount}条）',
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
    var tagWidgets = world!.tags.map((tag) {
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
    if (this.world == null) {
      return Scaffold(appBar: AppBar(elevation: 0));
    }
    var world = this.world!;
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
                      WorldDetailHeader(world),
                      WorldSummaryView(world.introduction, isSummaryUnfold, changeSummaryMaxLines),
                      WorldDetailCell(
                        iconName: 'img/detail_latest.png',
                        title: '最新',
                        subtitle: world.lastChapter?.title ?? '',
                        attachedWidget: Text(world.status, style: TextStyle(fontSize: 14, color: world.statusColor())),
                      ),
                      WorldDetailCell(
                        iconName: 'img/detail_chapter.png',
                        title: '元素',
                        subtitle: world.chapterCount != null ? '共${world.chapterCount}章' : '',
                      ),
                      buildTags(),
                      SizedBox(height: 10),
                      buildComment(),
                      SizedBox(height: 10),
                      WorldDetailRecommendView(recommendWorldS),
                    ],
                  ),
                ),
                WorldDetailToolbar(world),
              ],
            ),
            buildNavigationBar(),
          ],
        ),
      ),
    );
  }
}
