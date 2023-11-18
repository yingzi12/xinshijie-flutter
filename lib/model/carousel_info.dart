import 'package:xinshijie_flutter/model/home_entity.dart';

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
