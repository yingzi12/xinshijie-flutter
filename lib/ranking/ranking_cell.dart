import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/model/world_entity.dart';
import 'package:xinshijie_flutter/model/world_entity.dart';

import 'package:xinshijie_flutter/public.dart';

class RankingCell extends StatelessWidget {
  final WorldEntity world;

  RankingCell(this.world);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigator.pushWorldDetail(context, world.id!.toInt());
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NovelCoverImage(world.imgUrl??"", width: 70, height: 93),
            SizedBox(width: 15),
            Expanded(
              child: buildRight(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRight() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          world.name??"未知",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          world.intro??"无",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
            color: SQColor.gray,
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: <Widget>[
            Text(
              world.createName??"未知",
              style: TextStyle(fontSize: 14, color: SQColor.gray),
            ),
            Expanded(child: Container()),
            buildTag((world.status??"").toString(), Colors.red),
            SizedBox(width: 5),
            buildTag("分类，待完成", SQColor.gray),
          ],
        )
      ],
    );
  }

  Widget buildTag(String title, Color color) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 2, 5, 3),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(99, color.red, color.green, color.blue), width: 0.5),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 11, color: color),
      ),
    );
  }
}
