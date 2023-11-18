import 'package:xinshijie_flutter/model/home_entity.dart';

class MenuInfo {
  late String title;
  late String icon;
  late String url;

  MenuInfo.fromJson(Map data) {
    title = data['toTitle'];
    icon = data['icon'];
  }
  MenuInfo.formHomeTab(HomeTabVo homeTabVo){
    title =homeTabVo.title??"";
    icon = homeTabVo.icon??"style/empty.jpg";
  }

}

