import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/model/home_story_model.dart';

import 'story_cell.dart';
import 'story_grid_item.dart';
import 'story_section_view.dart';

class StoryFirstHybirdCard extends StatelessWidget {
  final HomeStoryModule cardInfo;

  StoryFirstHybirdCard(this.cardInfo);

  @override
  Widget build(BuildContext context) {
    var storys = cardInfo.books;
    if (storys == null || storys.length < 3) {
      return Container();
    }

    List<Widget> children = [];
    var bottomStorys = storys.sublist(1);
    bottomStorys.forEach((data) {
      children.add(StoryGridItem(data));
    });

    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          HomeSectionView(cardInfo.name),
          StoryCell(storys[0]),
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
