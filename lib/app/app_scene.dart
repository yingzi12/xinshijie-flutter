import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/home/home_scene.dart';
import 'package:xinshijie_flutter/public.dart';
import 'package:xinshijie_flutter/app/root_scene.dart';
import 'package:oktoast/oktoast.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '书旗小说',
      navigatorObservers: [routeObserver],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: SQColor.primary,
        dividerColor: SQColor.lightGray,
        scaffoldBackgroundColor: SQColor.paper,
        textTheme: TextTheme(bodyLarge: TextStyle(color: SQColor.darkGray)),
      ),
      home: OKToast(child: RootPage()),
        //注册路由表
        routes: routerTable,

    );
  }

  final routerTable={
    // '/':(context)=>Tabs(),
     '/form':(context)=>HomePage(),
    // '/search':(context,{arguments})=>SearchPage(arguments:arguments),
  };
}
