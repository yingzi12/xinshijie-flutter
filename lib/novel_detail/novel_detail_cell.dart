import 'package:flutter/material.dart';

import 'package:xinshijie_flutter/public.dart';

class NovelDetailCell extends StatelessWidget {
  final int wid;
  final int sid;
  final String iconName;
  final String title;
  final String subtitle;
  final Widget? attachedWidget;

  NovelDetailCell({required this.wid,required this.sid,required this.iconName, required this.title, required this.subtitle, this.attachedWidget});

  @override
  Widget build(BuildContext context) {
    return InkWell( // 使用 InkWell 包裹容器
      onTap: () {
        AppNavigator.pushChapterList(context, wid,sid);
      },
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  Image.asset(iconName),
                  SizedBox(width: 5),
                  Text(title, style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      subtitle,
                      style: TextStyle(fontSize: 14, color: SQColor.gray),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  attachedWidget != null ? attachedWidget! : Container(),
                  SizedBox(width: 10),
                  Image.asset('img/arrow_right.png'),
                ],
              ),
            ),
            Divider(height: 1),
          ],
        ),
      ),
    );
  }
}
