import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/model/story.dart';
import 'package:xinshijie_flutter/story/story_home_cover_view.dart';


class StoryDetailRecommendView extends StatelessWidget {
  final List<Story> storys;

  StoryDetailRecommendView(this.storys);

  Widget buildItems() {
    var children = storys.map((story) => HomeStoryCoverView(story)).toList();
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
