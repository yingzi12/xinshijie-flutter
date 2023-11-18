import 'package:xinshijie_flutter/model/novel.dart';

import 'home_entity.dart';

class HomeModule {
  late String id;
  late String name;
  late int style;
  late List content;

  List<CarouselInfo>? carousels;
  List<MenuInfo>? menus;
  List<Novel>? books;

  HomeModule.fromJson(Map data) {
    id = data['id'];
    name = data['m_s_name'];
    content = data['content'];

    if (name == '顶部banner') {
      carousels = [];
      content.forEach((data) {
        carousels!.add(CarouselInfo.fromJson(data));
      });
    }

    if (name == '顶部导航') {
      menus = [];
      content.forEach((data) {
        menus!.add(MenuInfo.fromJson(data));
      });
    }

    if (data['m_s_style'] != null) {
      style = data['m_s_style'];
      books = [];
      content.forEach((data) {
        books!.add(Novel.fromJson(data));
      });
    }
  }

  HomeModule.fromBanner(List<BannerVo> list){
    id = "1";
    name = "顶部banner";
    carousels = [];
    list.forEach((data) {
      carousels!.add(CarouselInfo.formBanner(data));
    });
  }

  HomeModule.fromModuleVo(ModuleVo moduleVo){

      id = moduleVo.id!.toString();
      name = moduleVo.name??"";
      if(moduleVo.style!=null) {
        style = moduleVo.style!.toInt();
      }
      if (moduleVo.style != null) {
        books = [];
        if(moduleVo.storyList!=null && moduleVo.storyList!.length>0) {
          moduleVo.storyList!.forEach((data) {
            books!.add(Novel.fromStroy(data));
          });
        }
        if(moduleVo.worldList != null && moduleVo.worldList!.length>0) {
          moduleVo.worldList!.forEach((data) {
            books!.add(Novel.fromWorld(data));
          });
        }
      }
  }

  HomeModule.fromHome(List<HomeTabVo> homeList){
    id = "2";
    name = "顶部导航";
    menus = [];
    homeList.forEach((home) {
      menus!.add(MenuInfo.formHomeTab(home));
    });
  }
}

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

class CarouselInfo {
  String? imageUrl;
  late String link;
  late String type;

  CarouselInfo.fromJson(Map data) {
    imageUrl = data['image_url'];
    link = data['link_url'];
  }
  CarouselInfo.formBanner(BannerVo bannerVo) {
    imageUrl = bannerVo.imageUrl??"/empty.jpg";
    link = bannerVo.linkUrl??"/index";
    type = bannerVo.type??"world";

  }
}
