import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/api/home_api.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/widget/toast.dart';
import 'package:xinshijie_flutter/model/carousel_info.dart';
import 'package:xinshijie_flutter/model/home_entity.dart';
import 'package:xinshijie_flutter/model/home_world_model.dart';


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
  List<HomeWorldModule> modules = [];

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
      List<HomeWorldModule> modules = [];
      modules.add(HomeWorldModule.fromBanner(bannerList));
      if(homeList.length>0) {
        modules.add(HomeWorldModule.fromHome(homeList));
      }
      homeEntity.moduleList!.forEach((data) {
        modules.add(HomeWorldModule.fromModuleVo(data));
      });

      setState(() {
        this.modules = modules;
        this.carouselInfos = carouselInfos;
      });
    } catch (e) {
      Toast.show(e.toString());
    }
  }

  Widget bookCardWithInfo(HomeWorldModule module) {
    Widget? card;
    switch (module.style) {
      case 1:
        card = WorldFourGridView(module);
        break;
      case 2:
        card = WorldSecondHybirdCard(module);
        break;
      case 3:
        card = WorldFirstHybirdCard(module);
        break;
      case 4:
        card = WorldNormalCard(module);
        break;
    }
    return card ?? SizedBox();
  }

  Widget buildModule(BuildContext context, HomeWorldModule module) {
    if (module.carousels != null) {
      return HomeBanner(module.carousels!);
    } else if (module.menus != null) {
      return WorldHomeMenu(module.menus!);
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
