import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/app/sq_color.dart';
import 'package:xinshijie_flutter/model/home_entity.dart';
import 'package:xinshijie_flutter/model/story_entity.dart';
import 'package:xinshijie_flutter/utils/constant.dart';

import 'chapter.dart';

class Story {
  late int id;
  late int wid;
  late String name;
  late String wname;
  late String imgUrl;
  late String firstChapter;
  late String updateTime;
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

  Story.fromJson(Map data) {
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

  Story.fromStory(StoryRemVo remVo){
    id=remVo.wid!.toInt();
    wid=remVo.wid!.toInt();
    wname=remVo.wname!;
    imgUrl=remVo.imgUrl?? "img/empty.png";
    author=remVo.createName??"未知";
    name=remVo.wname!;
    introduction=remVo.intro??"无";
    introduction=introduction.trim();
    if(remVo.stype ==null || remVo.stype!.isEmpty  )
       type="其他";
    else
       type=remVo.stype!;

    if(remVo.status!=null)
      status=worldStatusMap[remVo!.status]??"其他";
    else
      status="其他";

    if (remVo.stag == null || remVo.stag!.isEmpty ) {
      tags = ["其他"];
    }else{
      tags=remVo.stag!.split(",");
    }
    recommendCount=0;
  }

  Story.fromStoryEntity(StoryEntity remVo){
    id=remVo.id!.toInt();
    wid=remVo.wid!.toInt();
    wname=remVo.wname!;

    imgUrl=remVo.imgUrl?? "img/empty.png";
    author=remVo.createName??"未知";
    name=remVo.name!;
    introduction=remVo.intro??"无";
    introduction=introduction.trim();
    if(remVo.typeName ==null || remVo.typeName!.isEmpty  )
      type="其他";
    else
      type=remVo.typeName!;

    if(remVo.status!=null)
      status=worldStatusMap[remVo!.status]??"其他";
    else
      status="其他";

    if (remVo.tags == null || remVo.tags!.isEmpty ) {
      tags = ["其他"];
    }else{
      tags=remVo.tags!.split(",");
    }
    if (remVo.updateChapterId !=null) {
      lastChapter = Chapter.fromJsonEntiry(remVo.updateChapterId!.toInt(),remVo.updateChapter??"",0);
    }else{
      lastChapter=Chapter.fromJsonEntiry(-1, "", 0);
    }
    recommendCount=0;
    if(remVo.countChapter!=null) {
      chapterCount = remVo.countChapter!.toInt();
    }else{
      chapterCount =0;
    }
    if(remVo.countComment!=null) {
      commentCount = remVo.countComment!.toInt();
    }else{
      commentCount =0;
    }
    // if(remVo.count!=null) {
    //   wordCount = remVo.countComment!.toInt();
    // }else{
    //   wordCount =0;
    // }
    wordCount =0;
    score=0;
    updateTime=remVo.updateChapterTime?? (remVo.createTime??"");
  }
}
