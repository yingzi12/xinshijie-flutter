import 'package:flutter/material.dart';

import 'package:xinshijie_flutter/public.dart';
class WorldDetailCell extends StatelessWidget {
  final String iconName;
  final String title;
  final String subtitle;
  final Widget? attachedWidget;
  final VoidCallback onTap;  // 点击事件的回调函数

  WorldDetailCell({
    required this.iconName,
    required this.title,
    required this.subtitle,
    this.attachedWidget,
    required this.onTap,  // 在构造函数中初始化
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(  // 使用 InkWell 来获得点击效果
      onTap: onTap,  // 将回调函数赋值给 onTap 属性
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

// class WorldDetailCell extends StatelessWidget {
//   final String iconName;
//   final String title;
//   final String subtitle;
//   final Widget? attachedWidget;
//
//   WorldDetailCell({required this.iconName, required this.title, required this.subtitle, this.attachedWidget});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       padding: EdgeInsets.symmetric(horizontal: 15),
//       child: Column(
//         children: <Widget>[
//           Container(
//             height: 50,
//             child: Row(
//               children: <Widget>[
//                 Image.asset(iconName),
//                 SizedBox(width: 5),
//                 Text(title, style: TextStyle(fontSize: 16)),
//                 SizedBox(width: 10),
//                 Expanded(
//                   child: Text(
//                     subtitle,
//                     style: TextStyle(fontSize: 14, color: SQColor.gray),
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//                 attachedWidget != null ? attachedWidget! : Container(),
//                 SizedBox(width: 10),
//                 Image.asset('img/arrow_right.png'),
//               ],
//             ),
//           ),
//           Divider(height: 1),
//         ],
//       ),
//     );
//   }
// }
