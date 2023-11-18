/// id : 0
/// title : ""
/// status : 0
/// serialNumber : 0
/// wid : 0
/// sid : 0
/// sname : ""
/// updateTime : ""
/// pid : 0
/// isVip : 0
/// previous : {"id":0,"title":"","status":0,"serialNumber":0,"wid":0,"sid":0,"sname":""}
/// next : {"id":0,"title":"","status":0,"serialNumber":0,"wid":0,"sid":0,"sname":""}
/// contentZip : ""
/// length : 0
/// source : ""

class ChapterEntity {
  ChapterEntity({
      num? id, 
      String? title, 
      num? status, 
      num? serialNumber, 
      num? wid, 
      num? sid, 
      String? sname, 
      String? updateTime, 
      num? pid, 
      num? isVip, 
      Previous? previous, 
      Next? next, 
      String? contentZip, 
      num? length, 
      String? source,}){
    _id = id;
    _title = title;
    _status = status;
    _serialNumber = serialNumber;
    _wid = wid;
    _sid = sid;
    _sname = sname;
    _updateTime = updateTime;
    _pid = pid;
    _isVip = isVip;
    _previous = previous;
    _next = next;
    _contentZip = contentZip;
    _length = length;
    _source = source;
}

  ChapterEntity.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _status = json['status'];
    _serialNumber = json['serialNumber'];
    _wid = json['wid'];
    _sid = json['sid'];
    _sname = json['sname'];
    _updateTime = json['updateTime'];
    _pid = json['pid'];
    _isVip = json['isVip'];
    _previous = json['previous'] != null ? Previous.fromJson(json['previous']) : null;
    _next = json['next'] != null ? Next.fromJson(json['next']) : null;
    _contentZip = json['contentZip'];
    _length = json['length'];
    _source = json['source'];
  }
  num? _id;
  String? _title;
  num? _status;
  num? _serialNumber;
  num? _wid;
  num? _sid;
  String? _sname;
  String? _updateTime;
  num? _pid;
  num? _isVip;
  Previous? _previous;
  Next? _next;
  String? _contentZip;
  num? _length;
  String? _source;
ChapterEntity copyWith({  num? id,
  String? title,
  num? status,
  num? serialNumber,
  num? wid,
  num? sid,
  String? sname,
  String? updateTime,
  num? pid,
  num? isVip,
  Previous? previous,
  Next? next,
  String? contentZip,
  num? length,
  String? source,
}) => ChapterEntity(  id: id ?? _id,
  title: title ?? _title,
  status: status ?? _status,
  serialNumber: serialNumber ?? _serialNumber,
  wid: wid ?? _wid,
  sid: sid ?? _sid,
  sname: sname ?? _sname,
  updateTime: updateTime ?? _updateTime,
  pid: pid ?? _pid,
  isVip: isVip ?? _isVip,
  previous: previous ?? _previous,
  next: next ?? _next,
  contentZip: contentZip ?? _contentZip,
  length: length ?? _length,
  source: source ?? _source,
);
  num? get id => _id;
  String? get title => _title;
  num? get status => _status;
  num? get serialNumber => _serialNumber;
  num? get wid => _wid;
  num? get sid => _sid;
  String? get sname => _sname;
  String? get updateTime => _updateTime;
  num? get pid => _pid;
  num? get isVip => _isVip;
  Previous? get previous => _previous;
  Next? get next => _next;
  String? get contentZip => _contentZip;
  num? get length => _length;
  String? get source => _source;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['status'] = _status;
    map['serialNumber'] = _serialNumber;
    map['wid'] = _wid;
    map['sid'] = _sid;
    map['sname'] = _sname;
    map['updateTime'] = _updateTime;
    map['pid'] = _pid;
    map['isVip'] = _isVip;
    if (_previous != null) {
      map['previous'] = _previous?.toJson();
    }
    if (_next != null) {
      map['next'] = _next?.toJson();
    }
    map['contentZip'] = _contentZip;
    map['length'] = _length;
    map['source'] = _source;
    return map;
  }

}

/// id : 0
/// title : ""
/// status : 0
/// serialNumber : 0
/// wid : 0
/// sid : 0
/// sname : ""

class Next {
  Next({
      num? id, 
      String? title, 
      num? status, 
      num? serialNumber, 
      num? wid, 
      num? sid, 
      String? sname,}){
    _id = id;
    _title = title;
    _status = status;
    _serialNumber = serialNumber;
    _wid = wid;
    _sid = sid;
    _sname = sname;
}

  Next.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _status = json['status'];
    _serialNumber = json['serialNumber'];
    _wid = json['wid'];
    _sid = json['sid'];
    _sname = json['sname'];
  }
  num? _id;
  String? _title;
  num? _status;
  num? _serialNumber;
  num? _wid;
  num? _sid;
  String? _sname;
Next copyWith({  num? id,
  String? title,
  num? status,
  num? serialNumber,
  num? wid,
  num? sid,
  String? sname,
}) => Next(  id: id ?? _id,
  title: title ?? _title,
  status: status ?? _status,
  serialNumber: serialNumber ?? _serialNumber,
  wid: wid ?? _wid,
  sid: sid ?? _sid,
  sname: sname ?? _sname,
);
  num? get id => _id;
  String? get title => _title;
  num? get status => _status;
  num? get serialNumber => _serialNumber;
  num? get wid => _wid;
  num? get sid => _sid;
  String? get sname => _sname;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['status'] = _status;
    map['serialNumber'] = _serialNumber;
    map['wid'] = _wid;
    map['sid'] = _sid;
    map['sname'] = _sname;
    return map;
  }

}

/// id : 0
/// title : ""
/// status : 0
/// serialNumber : 0
/// wid : 0
/// sid : 0
/// sname : ""

class Previous {
  Previous({
      num? id, 
      String? title, 
      num? status, 
      num? serialNumber, 
      num? wid, 
      num? sid, 
      String? sname,}){
    _id = id;
    _title = title;
    _status = status;
    _serialNumber = serialNumber;
    _wid = wid;
    _sid = sid;
    _sname = sname;
}

  Previous.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _status = json['status'];
    _serialNumber = json['serialNumber'];
    _wid = json['wid'];
    _sid = json['sid'];
    _sname = json['sname'];
  }
  num? _id;
  String? _title;
  num? _status;
  num? _serialNumber;
  num? _wid;
  num? _sid;
  String? _sname;
Previous copyWith({  num? id,
  String? title,
  num? status,
  num? serialNumber,
  num? wid,
  num? sid,
  String? sname,
}) => Previous(  id: id ?? _id,
  title: title ?? _title,
  status: status ?? _status,
  serialNumber: serialNumber ?? _serialNumber,
  wid: wid ?? _wid,
  sid: sid ?? _sid,
  sname: sname ?? _sname,
);
  num? get id => _id;
  String? get title => _title;
  num? get status => _status;
  num? get serialNumber => _serialNumber;
  num? get wid => _wid;
  num? get sid => _sid;
  String? get sname => _sname;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['status'] = _status;
    map['serialNumber'] = _serialNumber;
    map['wid'] = _wid;
    map['sid'] = _sid;
    map['sname'] = _sname;
    return map;
  }

}