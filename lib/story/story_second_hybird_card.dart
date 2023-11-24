import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/model/home_story_model.dart';

import 'story_grid_item.dart';
import 'story_home_cover_view.dart';
import 'story_section_view.dart';

class StorySecondHybirdCard extends StatelessWidget {
  final HomeStoryModule cardInfo;

  StorySecondHybirdCard(this.cardInfo);

  @override
  Widget build(BuildContext context) {
    var storys = cardInfo.books;
    if (storys == null || storys.length < 5) {
      return Container();
    }

    var topStorys = storys.sublist(0, 4);
    List<Widget> children = [];
    topStorys.forEach((story) {
      children.add(HomeStoryCoverView(story));
    });

    var bottomStorys = storys.sublist(4);
    bottomStorys.forEach((story) {
      children.add(StoryGridItem(story));
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
