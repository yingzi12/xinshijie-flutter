import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/model/world.dart';
import 'package:xinshijie_flutter/world/world_home_cover_view.dart';


class WorldDetailRecommendView extends StatelessWidget {
  final List<World> worlds;

  WorldDetailRecommendView(this.worlds);

  Widget buildItems() {
    var children = worlds.map((world) => HomeWorldCoverView(world)).toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Wrap(spacing: 15, runSpacing: 20, children: children),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: <Widget>[
                Image.asset('img/home_tip.png'),
                SizedBox(width: 13),
                Text('看过本书的人还在看', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          buildItems(),
        ],
      ),
    );
  }
}
