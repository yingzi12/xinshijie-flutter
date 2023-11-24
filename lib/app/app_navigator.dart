import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/chapter/chapter_list_page.dart';
import 'package:xinshijie_flutter/element/element_detail_page.dart';
import 'package:xinshijie_flutter/element/element_list_page.dart';
import 'package:xinshijie_flutter/model/element_entity.dart';
import 'package:xinshijie_flutter/model/world.dart';

import 'package:xinshijie_flutter/public.dart';

import 'package:xinshijie_flutter/novel_detail/novel_detail_page.dart';
import 'package:xinshijie_flutter/me/login_page.dart';
import 'package:xinshijie_flutter/me/web_page.dart';
import 'package:xinshijie_flutter/ranking/ranking_list_page.dart';
import 'package:xinshijie_flutter/ranking_story/story_all_list_page.dart';
import 'package:xinshijie_flutter/ranking_story/story_list_page.dart';
import 'package:xinshijie_flutter/reader/reader_chapter_page.dart';
import 'package:xinshijie_flutter/reader/reader_page.dart';
import 'package:xinshijie_flutter/story_detail/story_detail_page.dart';
import 'package:xinshijie_flutter/world_detail/world_detail_page.dart';

class AppNavigator {
  static push(BuildContext context, Widget scene) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => scene,
      ),
    );
  }

  static pushNovelDetail(BuildContext context, int wid,int sid) {
    AppNavigator.push(context, NovelDetailPage(wid,sid));
  }

  static pushStoryDetail(BuildContext context, int wid,int sid) {
    AppNavigator.push(context, StoryDetailPage(wid,sid));
  }
  static pushWorldDetail(BuildContext context,  int wid) {
    AppNavigator.push(context, WorldDetailPage( wid));
  }
  static pushElementEntityDetail(BuildContext context, int wid,String wname) {
    AppNavigator.push(context, WorldDetailPage( wid));
  }

  static pushElementList(BuildContext context, int wid,String wname) {
    AppNavigator.push(context, ElementListPage( wid));
  }

  static pushStoryAllList(BuildContext context) {
    AppNavigator.push(context, StoryAllListPage());
  }

  static pushStoryList(BuildContext context, int wid,String wname) {
    AppNavigator.push(context, StoryListPage( wid,wname));
  }

  static pushReankingList(BuildContext context) {
    AppNavigator.push(context, RankingListPage( ));
  }

  static pushElementDetail(BuildContext context, int wid,int eid) {
    AppNavigator.push(context, ElementDetailPage( wid:1, eid: 1));
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

  static pushChapterList(BuildContext context, int wid,int sid) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ChapterListPage(wid:1,sid: 1);
    }));
  }

  static pushReader(BuildContext context, int articleId) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ReaderPage(articleId: articleId);
    }));
  }

  static pushReaderChapter(BuildContext context, int chapterId, int sid, int wid) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ReaderChapterPage(chapterId: chapterId,sid:sid,wid:wid);
    }));
  }
}
