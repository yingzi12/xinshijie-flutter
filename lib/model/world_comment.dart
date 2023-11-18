class WorldComment {
  late String nickname;
  late String avatar;
  late String content;

  WorldComment.fromJson(Map data) {
    nickname = data['nickName'];
    avatar = data['userPhoto'];
    content = data['text'];
  }
}
