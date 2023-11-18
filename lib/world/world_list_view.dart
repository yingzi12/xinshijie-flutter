import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/api/home_api.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/widget/toast.dart';
import 'package:xinshijie_flutter/model/home_entity.dart';

import 'package:xinshijie_flutter/public.dart';

import '../model/home_model.dart';
import 'world_banner.dart';
import 'world_menu.dart';
import 'world_normal_card.dart';
import 'world_four_grid_view.dart';
import 'world_first_hybird_card.dart';
import 'world_second_hybird_card.dart';

enum HomeListType {
  excellent,
  male,
  female,
  cartoon,
}

class HomeListView extends StatefulWidget {
  final HomeListType type;

  HomeListView(this.type);

  @override
  State<StatefulWidget> createState() {
    return HomeListViewState();
  }
}

class HomeListViewState extends State<HomeListView> with AutomaticKeepAliveClientMixin {
  List<CarouselInfo> carouselInfos = [];
  int pageIndex = 1;
  List<HomeModule> modules = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  bool get wantKeepAlive => true;

  Future<void> fetchData() async {
    try {
      late var action;
      late var kind=1;
      switch (this.widget.type) {
        case HomeListType.excellent:
          action = 'home_excellent';
          kind=1;
          break;
        case HomeListType.female:
          action = 'home_female';
          kind=2;

          break;
        case HomeListType.male:
          action = 'home_male';
          kind=3;

          break;
        case HomeListType.cartoon:
          action = 'home_cartoon';
          kind=4;
          break;
        default:
          break;
      }
      //返回模块数据
      // var responseJson = await Request.get(action: action);
      HomeEntity homeEntity  =await HomeApi.getWorld(kind);
      List<BannerVo> bannerList =homeEntity.bannerList?? [];
      List<HomeTabVo> homeList = homeEntity.homesList?? [];
      // List moduleData = responseJson['module'];
      List<HomeModule> modules = [];
      modules.add(HomeModule.fromBanner(bannerList));
      if(homeList.length>0) {
        modules.add(HomeModule.fromHome(homeList));
      }
      homeEntity.moduleList!.forEach((data) {
        modules.add(HomeModule.fromModuleVo(data));
      });

      setState(() {
        this.modules = modules;
        this.carouselInfos = carouselInfos;
      });
    } catch (e) {
      Toast.show(e.toString());
    }
  }

  Widget bookCardWithInfo(HomeModule module) {
    Widget? card;
    switch (module.style) {
      case 1:
        card = NovelFourGridView(module);
        break;
      case 2:
        card = NovelSecondHybirdCard(module);
        break;
      case 3:
        card = NovelFirstHybirdCard(module);
        break;
      case 4:
        card = NovelNormalCard(module);
        break;
    }
    return card ?? SizedBox();
  }

  Widget buildModule(BuildContext context, HomeModule module) {
    if (module.carousels != null) {
      return HomeBanner(module.carousels!);
    } else if (module.menus != null) {
      return HomeMenu(module.menus!);
    } else if (module.books != null) {
      return bookCardWithInfo(module);
    }

    return Container();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      child: RefreshIndicator(
        onRefresh: fetchData,
        child: ListView.builder(
          itemCount: modules.length,
          itemBuilder: (BuildContext context, int index) {
            return buildModule(context, modules[index]);
          },
        ),
      ),
    );
  }
}
