/// id : 18382
/// name : "御鬼者传奇"
/// description : null
/// types : 0
/// typeName : ""
/// intro : "御鬼者传奇最新章节由网友提供，《御鬼者传奇》情节跌宕起伏、扣人心弦，是一本情节与文笔俱佳的，蚂蚁文学免费提供御鬼者传奇最新清爽干净的文字章节在线阅读。"
/// ranks : 0
/// vitality : 0
/// updateElement : "最新更新的"
/// updateElementId : 1111
/// scores : 0
/// countElement : 0
/// countResident : 0
/// countAdmin : 1
/// countComment : 0
/// countLike : 0
/// countSee : 0
/// createTime : "2023-11-15 12:16:55"
/// updateTime : "2023-11-15 12:16:56"
/// createName : "admin"
/// createId : "1"
/// updateName : "名称"
/// updateId : "11"
/// status : 5
/// imgUrl : "/profile/upload/850/aed67105b43fecab924a0319c366b95b.jpg"
/// updateElementTime : "2023-11-15 12:16:56"
/// source : "沙之愚者"
/// isPrivate : 2
/// countFllow : 0
/// countDiscuss : 0
/// countAddType : 0
/// countEdit : 0
/// countStory : 0
/// countAudit : 0
/// countAuditStory : 0
/// countAuditElement : 0
/// countAuditDiscuss : 0
/// countAuditCommit : 0
/// countAuditManage : 0
/// tags : "科幻小说"
/// adminType : null
/// descriptionZip : "御鬼者传奇最新章节由网友提供，《御鬼者传奇》情节跌宕起伏、扣人心弦，是一本情节与文笔俱佳的，蚂蚁文学免费提供御鬼者传奇最新清爽干净的文字章节在线阅读。"

class WorldEntity {
  WorldEntity({
      num? id, 
      String? name, 
      dynamic description, 
      num? types, 
      String? typeName, 
      String? intro, 
      num? ranks, 
      num? vitality, 
      String? updateElement, 
      num? updateElementId, 
      num? scores, 
      num? countElement, 
      num? countResident, 
      num? countAdmin, 
      num? countComment, 
      num? countLike, 
      num? countSee, 
      String? createTime, 
      String? updateTime, 
      String? createName, 
      String? createId, 
      String? updateName, 
      String? updateId, 
      num? status, 
      String? imgUrl, 
      String? updateElementTime, 
      String? source, 
      num? isPrivate, 
      num? countFllow, 
      num? countDiscuss, 
      num? countAddType, 
      num? countEdit, 
      num? countStory, 
      num? countAudit, 
      num? countAuditStory, 
      num? countAuditElement, 
      num? countAuditDiscuss, 
      num? countAuditCommit, 
      num? countAuditManage, 
      String? tags, 
      dynamic adminType, 
      String? descriptionZip,}){
    _id = id;
    _name = name;
    _description = description;
    _types = types;
    _typeName = typeName;
    _intro = intro;
    _ranks = ranks;
    _vitality = vitality;
    _updateElement = updateElement;
    _updateElementId = updateElementId;
    _scores = scores;
    _countElement = countElement;
    _countResident = countResident;
    _countAdmin = countAdmin;
    _countComment = countComment;
    _countLike = countLike;
    _countSee = countSee;
    _createTime = createTime;
    _updateTime = updateTime;
    _createName = createName;
    _createId = createId;
    _updateName = updateName;
    _updateId = updateId;
    _status = status;
    _imgUrl = imgUrl;
    _updateElementTime = updateElementTime;
    _source = source;
    _isPrivate = isPrivate;
    _countFllow = countFllow;
    _countDiscuss = countDiscuss;
    _countAddType = countAddType;
    _countEdit = countEdit;
    _countStory = countStory;
    _countAudit = countAudit;
    _countAuditStory = countAuditStory;
    _countAuditElement = countAuditElement;
    _countAuditDiscuss = countAuditDiscuss;
    _countAuditCommit = countAuditCommit;
    _countAuditManage = countAuditManage;
    _tags = tags;
    _adminType = adminType;
    _descriptionZip = descriptionZip;
}

  WorldEntity.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _types = json['types'];
    _typeName = json['typeName'];
    _intro = json['intro'];
    _ranks = json['ranks'];
    _vitality = json['vitality'];
    _updateElement = json['updateElement'];
    _updateElementId = json['updateElementId'];
    _scores = json['scores'];
    _countElement = json['countElement'];
    _countResident = json['countResident'];
    _countAdmin = json['countAdmin'];
    _countComment = json['countComment'];
    _countLike = json['countLike'];
    _countSee = json['countSee'];
    _createTime = json['createTime'];
    _updateTime = json['updateTime'];
    _createName = json['createName'];
    _createId = json['createId'];
    _updateName = json['updateName'];
    _updateId = json['updateId'];
    _status = json['status'];
    _imgUrl = json['imgUrl'];
    _updateElementTime = json['updateElementTime'];
    _source = json['source'];
    _isPrivate = json['isPrivate'];
    _countFllow = json['countFllow'];
    _countDiscuss = json['countDiscuss'];
    _countAddType = json['countAddType'];
    _countEdit = json['countEdit'];
    _countStory = json['countStory'];
    _countAudit = json['countAudit'];
    _countAuditStory = json['countAuditStory'];
    _countAuditElement = json['countAuditElement'];
    _countAuditDiscuss = json['countAuditDiscuss'];
    _countAuditCommit = json['countAuditCommit'];
    _countAuditManage = json['countAuditManage'];
    _tags = json['tags'];
    _adminType = json['adminType'];
    _descriptionZip = json['descriptionZip'];
  }
  num? _id;
  String? _name;
  dynamic _description;
  num? _types;
  String? _typeName;
  String? _intro;
  num? _ranks;
  num? _vitality;
  String? _updateElement;
  num? _updateElementId;
  num? _scores;
  num? _countElement;
  num? _countResident;
  num? _countAdmin;
  num? _countComment;
  num? _countLike;
  num? _countSee;
  String? _createTime;
  String? _updateTime;
  String? _createName;
  String? _createId;
  String? _updateName;
  String? _updateId;
  num? _status;
  String? _imgUrl;
  String? _updateElementTime;
  String? _source;
  num? _isPrivate;
  num? _countFllow;
  num? _countDiscuss;
  num? _countAddType;
  num? _countEdit;
  num? _countStory;
  num? _countAudit;
  num? _countAuditStory;
  num? _countAuditElement;
  num? _countAuditDiscuss;
  num? _countAuditCommit;
  num? _countAuditManage;
  String? _tags;
  dynamic _adminType;
  String? _descriptionZip;
WorldEntity copyWith({  num? id,
  String? name,
  dynamic description,
  num? types,
  String? typeName,
  String? intro,
  num? ranks,
  num? vitality,
  String? updateElement,
  num? updateElementId,
  num? scores,
  num? countElement,
  num? countResident,
  num? countAdmin,
  num? countComment,
  num? countLike,
  num? countSee,
  String? createTime,
  String? updateTime,
  String? createName,
  String? createId,
  String? updateName,
  String? updateId,
  num? status,
  String? imgUrl,
  String? updateElementTime,
  String? source,
  num? isPrivate,
  num? countFllow,
  num? countDiscuss,
  num? countAddType,
  num? countEdit,
  num? countStory,
  num? countAudit,
  num? countAuditStory,
  num? countAuditElement,
  num? countAuditDiscuss,
  num? countAuditCommit,
  num? countAuditManage,
  String? tags,
  dynamic adminType,
  String? descriptionZip,
}) => WorldEntity(  id: id ?? _id,
  name: name ?? _name,
  description: description ?? _description,
  types: types ?? _types,
  typeName: typeName ?? _typeName,
  intro: intro ?? _intro,
  ranks: ranks ?? _ranks,
  vitality: vitality ?? _vitality,
  updateElement: updateElement ?? _updateElement,
  updateElementId: updateElementId ?? _updateElementId,
  scores: scores ?? _scores,
  countElement: countElement ?? _countElement,
  countResident: countResident ?? _countResident,
  countAdmin: countAdmin ?? _countAdmin,
  countComment: countComment ?? _countComment,
  countLike: countLike ?? _countLike,
  countSee: countSee ?? _countSee,
  createTime: createTime ?? _createTime,
  updateTime: updateTime ?? _updateTime,
  createName: createName ?? _createName,
  createId: createId ?? _createId,
  updateName: updateName ?? _updateName,
  updateId: updateId ?? _updateId,
  status: status ?? _status,
  imgUrl: imgUrl ?? _imgUrl,
  updateElementTime: updateElementTime ?? _updateElementTime,
  source: source ?? _source,
  isPrivate: isPrivate ?? _isPrivate,
  countFllow: countFllow ?? _countFllow,
  countDiscuss: countDiscuss ?? _countDiscuss,
  countAddType: countAddType ?? _countAddType,
  countEdit: countEdit ?? _countEdit,
  countStory: countStory ?? _countStory,
  countAudit: countAudit ?? _countAudit,
  countAuditStory: countAuditStory ?? _countAuditStory,
  countAuditElement: countAuditElement ?? _countAuditElement,
  countAuditDiscuss: countAuditDiscuss ?? _countAuditDiscuss,
  countAuditCommit: countAuditCommit ?? _countAuditCommit,
  countAuditManage: countAuditManage ?? _countAuditManage,
  tags: tags ?? _tags,
  adminType: adminType ?? _adminType,
  descriptionZip: descriptionZip ?? _descriptionZip,
);
  num? get id => _id;
  String? get name => _name;
  dynamic get description => _description;
  num? get types => _types;
  String? get typeName => _typeName;
  String? get intro => _intro;
  num? get ranks => _ranks;
  num? get vitality => _vitality;
  String? get updateElement => _updateElement;
  num? get updateElementId => _updateElementId;
  num? get scores => _scores;
  num? get countElement => _countElement;
  num? get countResident => _countResident;
  num? get countAdmin => _countAdmin;
  num? get countComment => _countComment;
  num? get countLike => _countLike;
  num? get countSee => _countSee;
  String? get createTime => _createTime;
  String? get updateTime => _updateTime;
  String? get createName => _createName;
  String? get createId => _createId;
  String? get updateName => _updateName;
  String? get updateId => _updateId;
  num? get status => _status;
  String? get imgUrl => _imgUrl;
  String? get updateElementTime => _updateElementTime;
  String? get source => _source;
  num? get isPrivate => _isPrivate;
  num? get countFllow => _countFllow;
  num? get countDiscuss => _countDiscuss;
  num? get countAddType => _countAddType;
  num? get countEdit => _countEdit;
  num? get countStory => _countStory;
  num? get countAudit => _countAudit;
  num? get countAuditStory => _countAuditStory;
  num? get countAuditElement => _countAuditElement;
  num? get countAuditDiscuss => _countAuditDiscuss;
  num? get countAuditCommit => _countAuditCommit;
  num? get countAuditManage => _countAuditManage;
  String? get tags => _tags;
  dynamic get adminType => _adminType;
  String? get descriptionZip => _descriptionZip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['description'] = _description;
    map['types'] = _types;
    map['typeName'] = _typeName;
    map['intro'] = _intro;
    map['ranks'] = _ranks;
    map['vitality'] = _vitality;
    map['updateElement'] = _updateElement;
    map['updateElementId'] = _updateElementId;
    map['scores'] = _scores;
    map['countElement'] = _countElement;
    map['countResident'] = _countResident;
    map['countAdmin'] = _countAdmin;
    map['countComment'] = _countComment;
    map['countLike'] = _countLike;
    map['countSee'] = _countSee;
    map['createTime'] = _createTime;
    map['updateTime'] = _updateTime;
    map['createName'] = _createName;
    map['createId'] = _createId;
    map['updateName'] = _updateName;
    map['updateId'] = _updateId;
    map['status'] = _status;
    map['imgUrl'] = _imgUrl;
    map['updateElementTime'] = _updateElementTime;
    map['source'] = _source;
    map['isPrivate'] = _isPrivate;
    map['countFllow'] = _countFllow;
    map['countDiscuss'] = _countDiscuss;
    map['countAddType'] = _countAddType;
    map['countEdit'] = _countEdit;
    map['countStory'] = _countStory;
    map['countAudit'] = _countAudit;
    map['countAuditStory'] = _countAuditStory;
    map['countAuditElement'] = _countAuditElement;
    map['countAuditDiscuss'] = _countAuditDiscuss;
    map['countAuditCommit'] = _countAuditCommit;
    map['countAuditManage'] = _countAuditManage;
    map['tags'] = _tags;
    map['adminType'] = _adminType;
    map['descriptionZip'] = _descriptionZip;
    return map;
  }

}