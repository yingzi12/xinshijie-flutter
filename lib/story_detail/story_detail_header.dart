import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/foundation/screen.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/foundation/utility.dart';
import 'package:xinshijie_flutter/model/story.dart';
import 'dart:ui' as ui;

import 'package:xinshijie_flutter/public.dart';

class StoryDetailHeader extends StatelessWidget {
  final Story story;
  StoryDetailHeader(this.story);

  @override
  Widget build(BuildContext context) {
    var width = Screen.width;
    var height = 218.0 + Screen.topSafeHeight;
    return Container(
      width: width,
      height: height,
      child: Stack(
        children: <Widget>[
          Image(
            image: CachedNetworkImageProvider(story.imgUrl),
            fit: BoxFit.fitWidth,
            width: width,
            height: height,
          ),
          Container(color: Color(0xbb000000), width: width, height: height),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: buildContent(context),
          ),
        ],
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    var width = Screen.width;
    return Container(
      width: width,
      padding: EdgeInsets.fromLTRB(15, 54 + Screen.topSafeHeight, 10, 0),
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          NovelCoverImage(story.imgUrl, width: 100, height: 133),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(story.name, style: TextStyle(fontSize: Utility.fixedFontSize(18), color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text('世界 : ${story.wname??""}', style: TextStyle(fontSize: Utility.fixedFontSize(14), color: SQColor.orange)),
                SizedBox(height: 10),
                Text(story.author, style: TextStyle(fontSize: Utility.fixedFontSize(14), color: SQColor.white)),
                SizedBox(height: 10),
                Text('更新时间 : ${story.updateTime??""}', style: TextStyle(fontSize: Utility.fixedFontSize(10), color: SQColor.white)),
                // Text('${story.wordCount}万字 ${story.price}书豆/千字', style: TextStyle(fontSize: Utility.fixedFontSize(14), color: SQColor.white)),
                SizedBox(height: 10),
                buildScore(),
                SizedBox(height: 10),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: <Widget>[
                //     Image.asset('img/read_icon_vip.png'),
                //     Expanded(
                //       child: Text(
                //         ' 续费包月会员，万本小说免费读 >',
                //         style: TextStyle(fontSize: Utility.fixedFontSize(14), color: Color(0xFFFEA900)),
                //         maxLines: 1,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildScore() {
    List<Widget> children = [Text('评分：${story.score??0}分  ', style: TextStyle(fontSize: Utility.fixedFontSize(14), color: Color(0xfff8e71c)))];

    var star = story.score??0;

    for (var i = 0; i < 5; i++) {
      if (star < i) {
        break;
      }
      var img;
      if (star <= i + 0.5) {
        img = Image.asset('img/detail_star_half.png');
      } else {
        img = Image.asset('img/detail_star.png');
      }
      children.add(img);
      children.add(SizedBox(width: 5));
    }
    return Row(
      children: children,
    );
  }
}
