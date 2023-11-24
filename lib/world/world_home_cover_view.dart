import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/foundation/screen.dart';
import 'package:xinshijie_flutter/model/world.dart';

import 'package:xinshijie_flutter/public.dart';

class HomeWorldCoverView extends StatelessWidget {
  final World world;
  HomeWorldCoverView(this.world);

  @override
  Widget build(BuildContext context) {
    var width = (Screen.width - 15 * 2 - 15 * 3) / 4;
    return GestureDetector(
      onTap: () {
        AppNavigator.pushWorldDetail(context, world.id);
      },
      child: Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NovelCoverImage(world.imgUrl, width: width, height: width / 0.75),
            SizedBox(height: 5),
            Text(
              world.name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            SizedBox(height: 3),
            Text(
              world.author,
              style: TextStyle(fontSize: 12, color: SQColor.gray),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
