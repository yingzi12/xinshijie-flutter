/// id : 0
/// wid : 0
/// createId : 0
/// ranks : 0
/// credit : 0
/// userName : ""
/// createTime : ""
/// updateTime : ""
/// wname : ""
/// userId : 0
/// createName : ""
/// updateId : 0
/// updateName : ""
/// types : 0
/// sid : 0
/// sname : ""
/// sign : ""
/// countAuditYes : 0
/// countAuditNo : 0
/// countAudit : 0
/// countChapter : 0
/// countComment : 0
/// countDiscuss : 0
/// countEdit : 0
/// countDel : 0

class AuthorEntity {
  AuthorEntity({
      num? id, 
      num? wid, 
      num? createId, 
      num? ranks, 
      num? credit, 
      String? userName, 
      String? createTime, 
      String? updateTime, 
      String? wname, 
      num? userId, 
      String? createName, 
      num? updateId, 
      String? updateName, 
      num? types, 
      num? sid, 
      String? sname, 
      String? sign, 
      num? countAuditYes, 
      num? countAuditNo, 
      num? countAudit, 
      num? countChapter, 
      num? countComment, 
      num? countDiscuss, 
      num? countEdit, 
      num? countDel,}){
    _id = id;
    _wid = wid;
    _createId = createId;
    _ranks = ranks;
    _credit = credit;
    _userName = userName;
    _createTime = createTime;
    _updateTime = updateTime;
    _wname = wname;
    _userId = userId;
    _createName = createName;
    _updateId = updateId;
    _updateName = updateName;
    _types = types;
    _sid = sid;
    _sname = sname;
    _sign = sign;
    _countAuditYes = countAuditYes;
    _countAuditNo = countAuditNo;
    _countAudit = countAudit;
    _countChapter = countChapter;
    _countComment = countComment;
    _countDiscuss = countDiscuss;
    _countEdit = countEdit;
    _countDel = countDel;
}

  AuthorEntity.fromJson(dynamic json) {
    _id = json['id'];
    _wid = json['wid'];
    _createId = json['createId'];
    _ranks = json['ranks'];
    _credit = json['credit'];
    _userName = json['userName'];
    _createTime = json['createTime'];
    _updateTime = json['updateTime'];
    _wname = json['wname'];
    _userId = json['userId'];
    _createName = json['createName'];
    _updateId = json['updateId'];
    _updateName = json['updateName'];
    _types = json['types'];
    _sid = json['sid'];
    _sname = json['sname'];
    _sign = json['sign'];
    _countAuditYes = json['countAuditYes'];
    _countAuditNo = json['countAuditNo'];
    _countAudit = json['countAudit'];
    _countChapter = json['countChapter'];
    _countComment = json['countComment'];
    _countDiscuss = json['countDiscuss'];
    _countEdit = json['countEdit'];
    _countDel = json['countDel'];
  }
  num? _id;
  num? _wid;
  num? _createId;
  num? _ranks;
  num? _credit;
  String? _userName;
  String? _createTime;
  String? _updateTime;
  String? _wname;
  num? _userId;
  String? _createName;
  num? _updateId;
  String? _updateName;
  num? _types;
  num? _sid;
  String? _sname;
  String? _sign;
  num? _countAuditYes;
  num? _countAuditNo;
  num? _countAudit;
  num? _countChapter;
  num? _countComment;
  num? _countDiscuss;
  num? _countEdit;
  num? _countDel;
AuthorEntity copyWith({  num? id,
  num? wid,
  num? createId,
  num? ranks,
  num? credit,
  String? userName,
  String? createTime,
  String? updateTime,
  String? wname,
  num? userId,
  String? createName,
  num? updateId,
  String? updateName,
  num? types,
  num? sid,
  String? sname,
  String? sign,
  num? countAuditYes,
  num? countAuditNo,
  num? countAudit,
  num? countChapter,
  num? countComment,
  num? countDiscuss,
  num? countEdit,
  num? countDel,
}) => AuthorEntity(  id: id ?? _id,
  wid: wid ?? _wid,
  createId: createId ?? _createId,
  ranks: ranks ?? _ranks,
  credit: credit ?? _credit,
  userName: userName ?? _userName,
  createTime: createTime ?? _createTime,
  updateTime: updateTime ?? _updateTime,
  wname: wname ?? _wname,
  userId: userId ?? _userId,
  createName: createName ?? _createName,
  updateId: updateId ?? _updateId,
  updateName: updateName ?? _updateName,
  types: types ?? _types,
  sid: sid ?? _sid,
  sname: sname ?? _sname,
  sign: sign ?? _sign,
  countAuditYes: countAuditYes ?? _countAuditYes,
  countAuditNo: countAuditNo ?? _countAuditNo,
  countAudit: countAudit ?? _countAudit,
  countChapter: countChapter ?? _countChapter,
  countComment: countComment ?? _countComment,
  countDiscuss: countDiscuss ?? _countDiscuss,
  countEdit: countEdit ?? _countEdit,
  countDel: countDel ?? _countDel,
);
  num? get id => _id;
  num? get wid => _wid;
  num? get createId => _createId;
  num? get ranks => _ranks;
  num? get credit => _credit;
  String? get userName => _userName;
  String? get createTime => _createTime;
  String? get updateTime => _updateTime;
  String? get wname => _wname;
  num? get userId => _userId;
  String? get createName => _createName;
  num? get updateId => _updateId;
  String? get updateName => _updateName;
  num? get types => _types;
  num? get sid => _sid;
  String? get sname => _sname;
  String? get sign => _sign;
  num? get countAuditYes => _countAuditYes;
  num? get countAuditNo => _countAuditNo;
  num? get countAudit => _countAudit;
  num? get countChapter => _countChapter;
  num? get countComment => _countComment;
  num? get countDiscuss => _countDiscuss;
  num? get countEdit => _countEdit;
  num? get countDel => _countDel;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['wid'] = _wid;
    map['createId'] = _createId;
    map['ranks'] = _ranks;
    map['credit'] = _credit;
    map['userName'] = _userName;
    map['createTime'] = _createTime;
    map['updateTime'] = _updateTime;
    map['wname'] = _wname;
    map['userId'] = _userId;
    map['createName'] = _createName;
    map['updateId'] = _updateId;
    map['updateName'] = _updateName;
    map['types'] = _types;
    map['sid'] = _sid;
    map['sname'] = _sname;
    map['sign'] = _sign;
    map['countAuditYes'] = _countAuditYes;
    map['countAuditNo'] = _countAuditNo;
    map['countAudit'] = _countAudit;
    map['countChapter'] = _countChapter;
    map['countComment'] = _countComment;
    map['countDiscuss'] = _countDiscuss;
    map['countEdit'] = _countEdit;
    map['countDel'] = _countDel;
    return map;
  }

}