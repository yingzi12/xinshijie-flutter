class Chapter {
  late int id;
  late String title;
  late int index;

  Chapter.fromJson(Map data) {
    id = data['id'];
    title = data['title'];
    index = data['index'] ?? 0;
  }

  Chapter.fromJsonEntiry(int _id,String _title,int _index) {
    id = _id;
    title = _title;
    index = _index;
  }
}
