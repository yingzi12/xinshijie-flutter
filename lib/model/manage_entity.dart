/// id : 0
/// wid : 0
/// createId : 0
/// ranks : 0
/// credit : 0
/// countSee : 0
/// countEdit : 0
/// countNew : 0
/// countComment : 0
/// userName : ""
/// createTime : ""
/// updateTime : ""
/// wname : ""
/// countAudit : ""
/// userId : 0
/// createName : ""
/// updateId : 0
/// updateName : ""
/// types : 0
/// sign : ""

class ManageEntity {
  ManageEntity({
      num? id, 
      num? wid, 
      num? createId, 
      num? ranks, 
      num? credit, 
      num? countSee, 
      num? countEdit, 
      num? countNew, 
      num? countComment, 
      String? userName, 
      String? createTime, 
      String? updateTime, 
      String? wname, 
      String? countAudit, 
      num? userId, 
      String? createName, 
      num? updateId, 
      String? updateName, 
      num? types, 
      String? sign,}){
    _id = id;
    _wid = wid;
    _createId = createId;
    _ranks = ranks;
    _credit = credit;
    _countSee = countSee;
    _countEdit = countEdit;
    _countNew = countNew;
    _countComment = countComment;
    _userName = userName;
    _createTime = createTime;
    _updateTime = updateTime;
    _wname = wname;
    _countAudit = countAudit;
    _userId = userId;
    _createName = createName;
    _updateId = updateId;
    _updateName = updateName;
    _types = types;
    _sign = sign;
}

  ManageEntity.fromJson(dynamic json) {
    _id = json['id'];
    _wid = json['wid'];
    _createId = json['createId'];
    _ranks = json['ranks'];
    _credit = json['credit'];
    _countSee = json['countSee'];
    _countEdit = json['countEdit'];
    _countNew = json['countNew'];
    _countComment = json['countComment'];
    _userName = json['userName'];
    _createTime = json['createTime'];
    _updateTime = json['updateTime'];
    _wname = json['wname'];
    _countAudit = json['countAudit'];
    _userId = json['userId'];
    _createName = json['createName'];
    _updateId = json['updateId'];
    _updateName = json['updateName'];
    _types = json['types'];
    _sign = json['sign'];
  }
  num? _id;
  num? _wid;
  num? _createId;
  num? _ranks;
  num? _credit;
  num? _countSee;
  num? _countEdit;
  num? _countNew;
  num? _countComment;
  String? _userName;
  String? _createTime;
  String? _updateTime;
  String? _wname;
  String? _countAudit;
  num? _userId;
  String? _createName;
  num? _updateId;
  String? _updateName;
  num? _types;
  String? _sign;
ManageEntity copyWith({  num? id,
  num? wid,
  num? createId,
  num? ranks,
  num? credit,
  num? countSee,
  num? countEdit,
  num? countNew,
  num? countComment,
  String? userName,
  String? createTime,
  String? updateTime,
  String? wname,
  String? countAudit,
  num? userId,
  String? createName,
  num? updateId,
  String? updateName,
  num? types,
  String? sign,
}) => ManageEntity(  id: id ?? _id,
  wid: wid ?? _wid,
  createId: createId ?? _createId,
  ranks: ranks ?? _ranks,
  credit: credit ?? _credit,
  countSee: countSee ?? _countSee,
  countEdit: countEdit ?? _countEdit,
  countNew: countNew ?? _countNew,
  countComment: countComment ?? _countComment,
  userName: userName ?? _userName,
  createTime: createTime ?? _createTime,
  updateTime: updateTime ?? _updateTime,
  wname: wname ?? _wname,
  countAudit: countAudit ?? _countAudit,
  userId: userId ?? _userId,
  createName: createName ?? _createName,
  updateId: updateId ?? _updateId,
  updateName: updateName ?? _updateName,
  types: types ?? _types,
  sign: sign ?? _sign,
);
  num? get id => _id;
  num? get wid => _wid;
  num? get createId => _createId;
  num? get ranks => _ranks;
  num? get credit => _credit;
  num? get countSee => _countSee;
  num? get countEdit => _countEdit;
  num? get countNew => _countNew;
  num? get countComment => _countComment;
  String? get userName => _userName;
  String? get createTime => _createTime;
  String? get updateTime => _updateTime;
  String? get wname => _wname;
  String? get countAudit => _countAudit;
  num? get userId => _userId;
  String? get createName => _createName;
  num? get updateId => _updateId;
  String? get updateName => _updateName;
  num? get types => _types;
  String? get sign => _sign;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['wid'] = _wid;
    map['createId'] = _createId;
    map['ranks'] = _ranks;
    map['credit'] = _credit;
    map['countSee'] = _countSee;
    map['countEdit'] = _countEdit;
    map['countNew'] = _countNew;
    map['countComment'] = _countComment;
    map['userName'] = _userName;
    map['createTime'] = _createTime;
    map['updateTime'] = _updateTime;
    map['wname'] = _wname;
    map['countAudit'] = _countAudit;
    map['userId'] = _userId;
    map['createName'] = _createName;
    map['updateId'] = _updateId;
    map['updateName'] = _updateName;
    map['types'] = _types;
    map['sign'] = _sign;
    return map;
  }

}