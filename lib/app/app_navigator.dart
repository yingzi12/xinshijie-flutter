import 'package:flutter/material.dart';

import 'package:xinshijie_flutter/public.dart';

import 'package:xinshijie_flutter/novel_detail/novel_detail_page.dart';
import 'package:xinshijie_flutter/me/login_page.dart';
import 'package:xinshijie_flutter/me/web_page.dart';
import 'package:xinshijie_flutter/reader/reader_page.dart';

class AppNavigator {
  static push(BuildContext context, Widget scene) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => scene,
      ),
    );
  }

  static pushNovelDetail(BuildContext context, Novel novel) {
    AppNavigator.push(context, NovelDetailPage(novel.id));
  }

  static pushLogin(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));
  }

  static pushWeb(BuildContext context, String url, String title) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebPage(url: url, title: title);
    }));
  }

  static pushReader(BuildContext context, int articleId) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ReaderPage(articleId: articleId);
    }));
  }
}
