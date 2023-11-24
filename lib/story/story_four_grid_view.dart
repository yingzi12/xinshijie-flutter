import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/model/home_story_model.dart';

import 'story_home_cover_view.dart';
import 'story_section_view.dart';

class StoryFourGridView extends StatelessWidget {
  final HomeStoryModule cardInfo;

  StoryFourGridView(this.cardInfo);

  @override
  Widget build(BuildContext context) {
    var storys = cardInfo.books;
    if (storys == null || storys.length < 8) {
      return Container();
    }
    var children = storys.map((story) => HomeStoryCoverView(story)).toList();
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
