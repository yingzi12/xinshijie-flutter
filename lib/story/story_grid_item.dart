import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/foundation/screen.dart';
import 'package:xinshijie_flutter/model/story.dart';

import 'package:xinshijie_flutter/public.dart';

class StoryGridItem extends StatelessWidget {
  final Story story;

  StoryGridItem(this.story);

  @override
  Widget build(BuildContext context) {
    var width = (Screen.width - 15 * 2 - 15) / 2;
    return GestureDetector(
      onTap: () {
        AppNavigator.pushStoryDetail(context,this.story.wid, this.story.id);
      },
      child: Container(
        width: width,
        child: Row(
          children: <Widget>[
            NovelCoverImage(story.imgUrl, width: 50, height: 66),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    story.name,
                    maxLines: 2,
                    style: TextStyle(fontSize: 16, height: 0.9, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    story.recommendCountStr(),
                    style: TextStyle(fontSize: 12, color: SQColor.gray),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
