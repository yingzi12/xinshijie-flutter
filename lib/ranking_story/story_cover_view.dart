import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/foundation/screen.dart';
import 'package:xinshijie_flutter/model/story_entity.dart';

import 'package:xinshijie_flutter/public.dart';

class StoryCoverView extends StatelessWidget {
  final StoryEntity entity;
  StoryCoverView(this.entity);

  @override
  Widget build(BuildContext context) {
    var width = (Screen.width - 15 * 2 - 15 * 3) / 4;
    return GestureDetector(
      onTap: () {
        // AppNavigator.pushStoryEntityDetail(context, entity);
      },
      child: Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NovelCoverImage(entity.imgUrl??"", width: width, height: width / 0.75),
            SizedBox(height: 5),
            Text(
              entity.name??"未知",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            SizedBox(height: 3),
            Text(
              entity.createTime??"",
              style: TextStyle(fontSize: 12, color: SQColor.gray),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
