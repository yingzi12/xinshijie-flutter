import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/model/element_entity.dart';

import 'package:xinshijie_flutter/public.dart';

class ElementCell extends StatelessWidget {
  final ElementEntity element;

  ElementCell(this.element);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigator.pushElementDetail(context, element.wid!.toInt(),element.id!.toInt());
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            NovelCoverImage(element.imageUrls??"", width: 70, height: 93),
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
          element.title??"未知",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          element.intro??"无",
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
              element.createName??"未知",
              style: TextStyle(fontSize: 14, color: SQColor.gray),
            ),
            Expanded(child: Container()),
            buildTag((element.status??"").toString(), Colors.red),
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
