import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/app/sq_color.dart';
import 'package:xinshijie_flutter/model/home_entity.dart';

import 'chapter.dart';

class Novel {
  late String id;
  late String name;
  late String imgUrl;
  late String firstChapter;
  late Chapter lastChapter;
  late String author;
  late double price;
  late double score;
  late String type;
  late String introduction;
  late int chapterCount;
  late int recommendCount;
  late int commentCount;
  late int firstArticleId;

  late List<String> roles;
  late String status;
  late double wordCount;
  late List<String> tags;
  late bool isLimitedFree;

  Novel.fromJson(Map data) {
    id = data['bid'] ?? '';
    firstArticleId = data['first_article_id'] ?? 0;
    name = data['bookname'];
    imgUrl = data['book_cover'];
    firstChapter = data['topic_first'] ?? '';
    if (data['lastChapter'] != null) {
      lastChapter = Chapter.fromJson(data['lastChapter']);
    }
    score = data['score'] ?? 0;
    author = data['author_name'];
    price = double.parse(data['price'] ?? '0');
    type = data['class_name'] ?? '';
    introduction = data['introduction'] ?? '';
    chapterCount = int.parse(data['chapterNum'] ?? '0');
    recommendCount = int.parse(data['recommend_num'] ?? '0');
    commentCount = int.parse(data['comment_count'] ?? '0');

    status = data['stat_name'] ?? '';
    wordCount = data['wordCount'] ?? 0;
    tags = (data['tag'] ?? []).cast<String>()?.toList();

    isLimitedFree = data['is_free'] == 1;
  }

  String recommendCountStr() {
    if (recommendCount >= 10000) {
      return (recommendCount / 10000).toStringAsFixed(1) + '万人推荐';
    } else {
      return recommendCount.toString() + '人推荐';
    }
  }

  Color statusColor() {
    return status == '连载' ? SQColor.blue : SQColor.primary;
  }

  Novel.fromStroy(StoryRemVo remVo){
    id=remVo.sid! as String;
    imgUrl=remVo.imgUrl?? "image/empty.jpg";
    type=remVo.stype?? "其他";
    author=remVo.createName??"未知";
    name=remVo.sname!;
    if (remVo.stag == null || remVo.stag!.isEmpty) {
      tags = ["其他"];
    }else{
      tags=remVo.stag!.split(",");
    }
    recommendCount=0;
  }

  Novel.fromWorld(WorldRemVo remVo){
    id=remVo.wid! as String;
    imgUrl=remVo.imgUrl?? "image/empty.jpg";
    type=remVo.wtype?? "其他";
    author=remVo.createName??"未知";
    name=remVo.wname!;
    if (remVo.wtag == null || remVo.wtag!.isEmpty) {
      tags = ["其他"];
    }else{
      tags=remVo.wtag!.split(",");
    }
    recommendCount=0;
  }
}
