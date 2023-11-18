import 'package:xinshijie_flutter/model/comment_entity.dart';

class WorldComment {
  late String nickname;
  late String avatar;
  late String content;

  WorldComment.fromJson(Map data) {
    nickname = data['nickName'];
    avatar = data['userPhoto'];
    content = data['text'];
  }

  WorldComment.fromComment(CommentEntity entity){
    nickname =entity.nickname??"未知";
    avatar = entity.circleUrl??"";
    content = entity.comment??"";
  }
}
