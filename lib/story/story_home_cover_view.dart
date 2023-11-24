import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/foundation/screen.dart';
import 'package:xinshijie_flutter/model/story.dart';

import 'package:xinshijie_flutter/public.dart';

class HomeStoryCoverView extends StatelessWidget {
  final Story story;
  HomeStoryCoverView(this.story);

  @override
  Widget build(BuildContext context) {
    var width = (Screen.width - 15 * 2 - 15 * 3) / 4;
    return GestureDetector(
      onTap: () {
        AppNavigator.pushStoryDetail(context,story.wid, story.id);
      },
      child: Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NovelCoverImage(story.imgUrl, width: width, height: width / 0.75),
            SizedBox(height: 5),
            Text(
              story.name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            SizedBox(height: 3),
            Text(
              story.author,
              style: TextStyle(fontSize: 12, color: SQColor.gray),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
