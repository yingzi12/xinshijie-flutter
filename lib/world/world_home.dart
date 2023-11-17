import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:xinshijie_flutter/public.dart';

import 'world_list_view.dart';

class WorldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<WorldPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TabBar(
              labelColor: SQColor.darkGray,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              unselectedLabelColor: SQColor.gray,
              indicatorColor: SQColor.secondary,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              indicatorPadding: EdgeInsets.fromLTRB(8, 0, 8, 5),
              tabs: [
                Tab(text: '精选'),
                Tab(text: '推荐'),
                Tab(text: '精品'),
                Tab(text: '热门'),
              ],
            ),
          ),
          backgroundColor: SQColor.white,
          elevation: 0,
        ),
        body: TabBarView(children: [
          HomeListView(HomeListType.excellent),
          HomeListView(HomeListType.female),
          HomeListView(HomeListType.male),
          HomeListView(HomeListType.cartoon),
        ]),
      ),
    );
  }
}
