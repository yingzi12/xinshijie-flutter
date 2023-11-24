import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/api/home_api.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/widget/toast.dart';
import 'package:xinshijie_flutter/model/carousel_info.dart';
import 'package:xinshijie_flutter/model/home_entity.dart';
import 'package:xinshijie_flutter/model/home_story_model.dart';


import 'story_banner.dart';
import 'story_menu.dart';
import 'story_normal_card.dart';
import 'story_four_grid_view.dart';
import 'story_first_hybird_card.dart';
import 'story_second_hybird_card.dart';

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
  List<HomeStoryModule> modules = [];

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
      HomeEntity homeEntity  =await HomeApi.getStory(kind);
      List<BannerVo> bannerList =homeEntity.bannerList?? [];
      List<HomeTabVo> homeList = homeEntity.homesList?? [];
      // List moduleData = responseJson['module'];
      List<HomeStoryModule> modules = [];
      modules.add(HomeStoryModule.fromBanner(bannerList));
      if(homeList.length>0) {
        modules.add(HomeStoryModule.fromHome(homeList));
      }
      homeEntity.moduleList!.forEach((data) {
        modules.add(HomeStoryModule.fromModuleVo(data));
      });

      setState(() {
        this.modules = modules;
        this.carouselInfos = carouselInfos;
      });
    } catch (e) {
      Toast.show(e.toString());
    }
  }

  Widget bookCardWithInfo(HomeStoryModule module) {
    Widget? card;
    switch (module.style) {
      case 1:
        card = StoryFourGridView(module);
        break;
      case 2:
        card = StorySecondHybirdCard(module);
        break;
      case 3:
        card = StoryFirstHybirdCard(module);
        break;
      case 4:
        card = StoryNormalCard(module);
        break;
    }
    return card ?? SizedBox();
  }

  Widget buildModule(BuildContext context, HomeStoryModule module) {
    if (module.carousels != null) {
      return HomeBanner(module.carousels!);
    } else if (module.menus != null) {
      return StoryHomeMenu(module.menus!);
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
