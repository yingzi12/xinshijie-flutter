import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/model/home_world_model.dart';

import 'world_grid_item.dart';
import 'world_home_cover_view.dart';
import 'world_section_view.dart';

class WorldSecondHybirdCard extends StatelessWidget {
  final HomeWorldModule cardInfo;

  WorldSecondHybirdCard(this.cardInfo);

  @override
  Widget build(BuildContext context) {
    var worlds = cardInfo.books;
    if (worlds == null || worlds.length < 5) {
      return Container();
    }

    var topWorlds = worlds.sublist(0, 4);
    List<Widget> children = [];
    topWorlds.forEach((world) {
      children.add(HomeWorldCoverView(world));
    });

    var bottomWorlds = worlds.sublist(4);
    bottomWorlds.forEach((world) {
      children.add(WorldGridItem(world));
    });

    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          HomeSectionView(cardInfo.name),
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
