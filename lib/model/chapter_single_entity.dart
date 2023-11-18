/// id : 0
/// title : ""
/// pid : 0
/// length : 0
/// source : ""

class ChapterSingleEntity {
  ChapterSingleEntity({
      num? id, 
      String? title, 
      num? pid, 
      num? length, 
      String? source,}){
    _id = id;
    _title = title;
    _pid = pid;
    _length = length;
    _source = source;
}

  ChapterSingleEntity.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _pid = json['pid'];
    _length = json['length'];
    _source = json['source'];
  }
  num? _id;
  String? _title;
  num? _pid;
  num? _length;
  String? _source;
ChapterSingleEntity copyWith({  num? id,
  String? title,
  num? pid,
  num? length,
  String? source,
}) => ChapterSingleEntity(  id: id ?? _id,
  title: title ?? _title,
  pid: pid ?? _pid,
  length: length ?? _length,
  source: source ?? _source,
);
  num? get id => _id;
  String? get title => _title;
  num? get pid => _pid;
  num? get length => _length;
  String? get source => _source;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['pid'] = _pid;
    map['length'] = _length;
    map['source'] = _source;
    return map;
  }

}