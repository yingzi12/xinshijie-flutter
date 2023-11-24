import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/model/home_story_model.dart';

import 'story_cell.dart';
import 'story_section_view.dart';

class StoryNormalCard extends StatelessWidget {
  final HomeStoryModule cardInfo;

  StoryNormalCard(this.cardInfo);

  @override
  Widget build(BuildContext context) {
    var storys = cardInfo.books;
    if (storys == null || storys.length < 3) {
      return SizedBox();
    }

    List<Widget> children = [
      HomeSectionView(cardInfo.name),
    ];
    for (var i = 0; i < storys.length; i++) {
      var story = storys[i];
      children.add(StoryCell(story));
      children.add(Divider(height: 1));
    }
    children.add(Container(height: 10, color: Color(0xfff5f5f5)));

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
