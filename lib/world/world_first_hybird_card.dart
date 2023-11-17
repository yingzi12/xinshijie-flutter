import 'package:flutter/material.dart';

import 'world_cell.dart';
import 'world_grid_item.dart';
import 'world_section_view.dart';
import 'world_model.dart';

class NovelFirstHybirdCard extends StatelessWidget {
  final HomeModule cardInfo;

  NovelFirstHybirdCard(this.cardInfo);

  @override
  Widget build(BuildContext context) {
    var novels = cardInfo.books;
    if (novels == null || novels.length < 3) {
      return Container();
    }

    List<Widget> children = [];
    var bottomNovels = novels.sublist(1);
    bottomNovels.forEach((novel) {
      children.add(NovelGridItem(novel));
    });

    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          HomeSectionView(cardInfo.name),
          NovelCell(novels[0]),
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Wrap(spacing: 15, runSpacing: 15, children: children),
          ),
          Container(
            height: 10,
            color: Color(0xfff5f5f5),
          )
        ],
      ),
    );
  }
}
