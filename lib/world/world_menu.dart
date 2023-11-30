import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/model/menu_info.dart';

import 'package:xinshijie_flutter/public.dart';

class WorldHomeMenu extends StatelessWidget {
  final List<MenuInfo> infos;

  WorldHomeMenu(this.infos);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: infos.map((info) => menuItem(context,info)).toList(),
      ),
    );
  }

  Widget menuItem(BuildContext context,MenuInfo info) {
    return GestureDetector(
      onTap: () {
        // Use Navigator to push the new route based on info.path
        Navigator.pushNamed(context, info.url);
      },
      child: Column(
        children: <Widget>[
          Image.asset(info.icon),
          SizedBox(height: 5),
          Text(info.title, style: TextStyle(fontSize: 12, color: SQColor.gray)),
        ],
      ),
    );
  }
}
