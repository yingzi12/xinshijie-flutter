import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/model/home_world_model.dart';

import 'world_cell.dart';
import 'world_grid_item.dart';
import 'world_section_view.dart';

class WorldFirstHybirdCard extends StatelessWidget {
  final HomeWorldModule cardInfo;

  WorldFirstHybirdCard(this.cardInfo);

  @override
  Widget build(BuildContext context) {
    var worlds = cardInfo.books;
    if (worlds == null || worlds.length < 3) {
      return Container();
    }

    List<Widget> children = [];
    var bottomWorlds = worlds.sublist(1);
    bottomWorlds.forEach((data) {
      children.add(WorldGridItem(data));
    });

    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          HomeSectionView(cardInfo.name),
          WorldCell(worlds[0]),
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
