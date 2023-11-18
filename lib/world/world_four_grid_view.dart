import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/model/home_world_model.dart';

import 'world_home_cover_view.dart';
import 'world_section_view.dart';

class WorldFourGridView extends StatelessWidget {
  final HomeWorldModule cardInfo;

  WorldFourGridView(this.cardInfo);

  @override
  Widget build(BuildContext context) {
    var worlds = cardInfo.books;
    if (worlds == null || worlds.length < 8) {
      return Container();
    }
    var children = worlds.map((world) => HomeWorldCoverView(world)).toList();
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HomeSectionView(cardInfo.name),
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Wrap(spacing: 15, runSpacing: 20, children: children),
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
