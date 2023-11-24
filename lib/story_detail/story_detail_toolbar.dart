import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/foundation/screen.dart';
import 'package:xinshijie_flutter/model/story.dart';

import 'package:xinshijie_flutter/public.dart';

class StoryDetailToolbar extends StatelessWidget {
  final Story story;
  StoryDetailToolbar(this.story);

  read() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: Screen.bottomSafeHeight),
      decoration: BoxDecoration(color: Colors.white, boxShadow: Styles.borderShadow),
      height: 50 + Screen.bottomSafeHeight,
      child: Row(children: <Widget>[
        Expanded(
          child: Center(
            child: Text(
              '加书架',
              style: TextStyle(fontSize: 16, color: SQColor.primary),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              AppNavigator.pushReader(context, story.firstArticleId);
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(color: SQColor.primary, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  '开始阅读',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              '下载',
              style: TextStyle(fontSize: 16, color: SQColor.primary),
            ),
          ),
        ),
      ]),
    );
  }
}
