import 'package:xinshijie_flutter/model/chapter_entity.dart';

class Article {
  late int id;
  late int novelId;
  late String title;
  late String content;
  late int price;
  late int index;
  late int nextArticleId;
  late int preArticleId;

  late List<Map<String, int>> pageOffsets;

  Article.fromJson(Map data) {
    id = data['id'];
    novelId = data['novel_id'];
    title = data['title'];
    content = data['content'];
    content = '　　' + content;
    content = content.replaceAll('\n', '\n　　');
    price = data['welth'] ?? 0;
    index = data['index'];
    nextArticleId = data['next_id'];
    preArticleId = data['prev_id'];
  }

  Article.fromChapter(ChapterEntity chapter) {
    id = chapter.id!.toInt();
    novelId = chapter.sid!.toInt();
    title = chapter.title!;
    content = chapter.contentZip ?? "";
    content = '　　' + content;
    content = content.replaceAll('<br>', '');
    content = content.replaceAll(RegExp(r'\n\s*\n+'), '\n    ');
    content = content.replaceAll('&nbsp;', "");

    price = 0;
    index = 0;
    if(chapter.next==null){
      nextArticleId=-1;
    }else{
      nextArticleId = chapter.next!.id!.toInt()??-1;
    }
    if(chapter.previous==null){
      preArticleId=-1;
    }else{
      preArticleId = chapter.previous!.id!.toInt() ??-1;
    }
  }

  String stringAtPageIndex(int index) {
    var offset = pageOffsets[index];
    return this.content.substring(offset['start']!, offset['end']);
  }

  int get pageCount {
    return pageOffsets.length;
  }
}
