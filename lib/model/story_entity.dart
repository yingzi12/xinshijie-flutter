/// id : 0
/// name : ""
/// intro : ""
/// permission : 0
/// author : ""
/// category : 0
/// status : 0
/// createTime : ""
/// createId : 0
/// createName : ""
/// updateName : ""
/// updateTime : ""
/// updateId : 0
/// tags : ""
/// updateChapter : ""
/// updateChapterId : 0
/// updateChapterTime : ""
/// diffuse : 0
/// ranks : 0
/// types : 0
/// typeName : ""
/// auditNumber : 0
/// auditContent : ""
/// countWord : 0
/// imgUrl : ""
/// isVip : 0
/// wid : 0
/// wname : ""
/// auditId : 0
/// auditName : ""
/// auditTime : ""
/// endTime : ""
/// source : ""
/// countAuthor : 0
/// countComment : 0
/// countDiscuss : 0
/// countChapter : 0
/// countEdit : 0
/// countHarding : 0
/// countLike : 0
/// countSee : 0
/// countAudit : 0
/// isPrivate : 0
/// countAuditDiscuss : 0
/// countAuditCommit : 0
/// countAuditChapter : 0
/// countAuditAuthor : 0
/// authorType : 0
/// scores : 0
/// descriptionZip : ""
/// kind : 0

class StoryEntity {
  StoryEntity({
      num? id, 
      String? name, 
      String? intro, 
      num? permission, 
      String? author, 
      num? category, 
      num? status, 
      String? createTime, 
      num? createId, 
      String? createName, 
      String? updateName, 
      String? updateTime, 
      num? updateId, 
      String? tags, 
      String? updateChapter, 
      num? updateChapterId, 
      String? updateChapterTime, 
      num? diffuse, 
      num? ranks, 
      num? types, 
      String? typeName, 
      num? auditNumber, 
      String? auditContent, 
      num? countWord, 
      String? imgUrl, 
      num? isVip, 
      num? wid, 
      String? wname, 
      num? auditId, 
      String? auditName, 
      String? auditTime, 
      String? endTime, 
      String? source, 
      num? countAuthor, 
      num? countComment, 
      num? countDiscuss, 
      num? countChapter, 
      num? countEdit, 
      num? countHarding, 
      num? countLike, 
      num? countSee, 
      num? countAudit, 
      num? isPrivate, 
      num? countAuditDiscuss, 
      num? countAuditCommit, 
      num? countAuditChapter, 
      num? countAuditAuthor, 
      num? authorType, 
      num? scores, 
      String? descriptionZip, 
      num? kind,}){
    _id = id;
    _name = name;
    _intro = intro;
    _permission = permission;
    _author = author;
    _category = category;
    _status = status;
    _createTime = createTime;
    _createId = createId;
    _createName = createName;
    _updateName = updateName;
    _updateTime = updateTime;
    _updateId = updateId;
    _tags = tags;
    _updateChapter = updateChapter;
    _updateChapterId = updateChapterId;
    _updateChapterTime = updateChapterTime;
    _diffuse = diffuse;
    _ranks = ranks;
    _types = types;
    _typeName = typeName;
    _auditNumber = auditNumber;
    _auditContent = auditContent;
    _countWord = countWord;
    _imgUrl = imgUrl;
    _isVip = isVip;
    _wid = wid;
    _wname = wname;
    _auditId = auditId;
    _auditName = auditName;
    _auditTime = auditTime;
    _endTime = endTime;
    _source = source;
    _countAuthor = countAuthor;
    _countComment = countComment;
    _countDiscuss = countDiscuss;
    _countChapter = countChapter;
    _countEdit = countEdit;
    _countHarding = countHarding;
    _countLike = countLike;
    _countSee = countSee;
    _countAudit = countAudit;
    _isPrivate = isPrivate;
    _countAuditDiscuss = countAuditDiscuss;
    _countAuditCommit = countAuditCommit;
    _countAuditChapter = countAuditChapter;
    _countAuditAuthor = countAuditAuthor;
    _authorType = authorType;
    _scores = scores;
    _descriptionZip = descriptionZip;
    _kind = kind;
}

  StoryEntity.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _intro = json['intro'];
    _permission = json['permission'];
    _author = json['author'];
    _category = json['category'];
    _status = json['status'];
    _createTime = json['createTime'];
    _createId = json['createId'];
    _createName = json['createName'];
    _updateName = json['updateName'];
    _updateTime = json['updateTime'];
    _updateId = json['updateId'];
    _tags = json['tags'];
    _updateChapter = json['updateChapter'];
    _updateChapterId = json['updateChapterId'];
    _updateChapterTime = json['updateChapterTime'];
    _diffuse = json['diffuse'];
    _ranks = json['ranks'];
    _types = json['types'];
    _typeName = json['typeName'];
    _auditNumber = json['auditNumber'];
    _auditContent = json['auditContent'];
    _countWord = json['countWord'];
    _imgUrl = json['imgUrl'];
    _isVip = json['isVip'];
    _wid = json['wid'];
    _wname = json['wname'];
    _auditId = json['auditId'];
    _auditName = json['auditName'];
    _auditTime = json['auditTime'];
    _endTime = json['endTime'];
    _source = json['source'];
    _countAuthor = json['countAuthor'];
    _countComment = json['countComment'];
    _countDiscuss = json['countDiscuss'];
    _countChapter = json['countChapter'];
    _countEdit = json['countEdit'];
    _countHarding = json['countHarding'];
    _countLike = json['countLike'];
    _countSee = json['countSee'];
    _countAudit = json['countAudit'];
    _isPrivate = json['isPrivate'];
    _countAuditDiscuss = json['countAuditDiscuss'];
    _countAuditCommit = json['countAuditCommit'];
    _countAuditChapter = json['countAuditChapter'];
    _countAuditAuthor = json['countAuditAuthor'];
    _authorType = json['authorType'];
    _scores = json['scores'];
    _descriptionZip = json['descriptionZip'];
    _kind = json['kind'];
  }
  num? _id;
  String? _name;
  String? _intro;
  num? _permission;
  String? _author;
  num? _category;
  num? _status;
  String? _createTime;
  num? _createId;
  String? _createName;
  String? _updateName;
  String? _updateTime;
  num? _updateId;
  String? _tags;
  String? _updateChapter;
  num? _updateChapterId;
  String? _updateChapterTime;
  num? _diffuse;
  num? _ranks;
  num? _types;
  String? _typeName;
  num? _auditNumber;
  String? _auditContent;
  num? _countWord;
  String? _imgUrl;
  num? _isVip;
  num? _wid;
  String? _wname;
  num? _auditId;
  String? _auditName;
  String? _auditTime;
  String? _endTime;
  String? _source;
  num? _countAuthor;
  num? _countComment;
  num? _countDiscuss;
  num? _countChapter;
  num? _countEdit;
  num? _countHarding;
  num? _countLike;
  num? _countSee;
  num? _countAudit;
  num? _isPrivate;
  num? _countAuditDiscuss;
  num? _countAuditCommit;
  num? _countAuditChapter;
  num? _countAuditAuthor;
  num? _authorType;
  num? _scores;
  String? _descriptionZip;
  num? _kind;
StoryEntity copyWith({  num? id,
  String? name,
  String? intro,
  num? permission,
  String? author,
  num? category,
  num? status,
  String? createTime,
  num? createId,
  String? createName,
  String? updateName,
  String? updateTime,
  num? updateId,
  String? tags,
  String? updateChapter,
  num? updateChapterId,
  String? updateChapterTime,
  num? diffuse,
  num? ranks,
  num? types,
  String? typeName,
  num? auditNumber,
  String? auditContent,
  num? countWord,
  String? imgUrl,
  num? isVip,
  num? wid,
  String? wname,
  num? auditId,
  String? auditName,
  String? auditTime,
  String? endTime,
  String? source,
  num? countAuthor,
  num? countComment,
  num? countDiscuss,
  num? countChapter,
  num? countEdit,
  num? countHarding,
  num? countLike,
  num? countSee,
  num? countAudit,
  num? isPrivate,
  num? countAuditDiscuss,
  num? countAuditCommit,
  num? countAuditChapter,
  num? countAuditAuthor,
  num? authorType,
  num? scores,
  String? descriptionZip,
  num? kind,
}) => StoryEntity(  id: id ?? _id,
  name: name ?? _name,
  intro: intro ?? _intro,
  permission: permission ?? _permission,
  author: author ?? _author,
  category: category ?? _category,
  status: status ?? _status,
  createTime: createTime ?? _createTime,
  createId: createId ?? _createId,
  createName: createName ?? _createName,
  updateName: updateName ?? _updateName,
  updateTime: updateTime ?? _updateTime,
  updateId: updateId ?? _updateId,
  tags: tags ?? _tags,
  updateChapter: updateChapter ?? _updateChapter,
  updateChapterId: updateChapterId ?? _updateChapterId,
  updateChapterTime: updateChapterTime ?? _updateChapterTime,
  diffuse: diffuse ?? _diffuse,
  ranks: ranks ?? _ranks,
  types: types ?? _types,
  typeName: typeName ?? _typeName,
  auditNumber: auditNumber ?? _auditNumber,
  auditContent: auditContent ?? _auditContent,
  countWord: countWord ?? _countWord,
  imgUrl: imgUrl ?? _imgUrl,
  isVip: isVip ?? _isVip,
  wid: wid ?? _wid,
  wname: wname ?? _wname,
  auditId: auditId ?? _auditId,
  auditName: auditName ?? _auditName,
  auditTime: auditTime ?? _auditTime,
  endTime: endTime ?? _endTime,
  source: source ?? _source,
  countAuthor: countAuthor ?? _countAuthor,
  countComment: countComment ?? _countComment,
  countDiscuss: countDiscuss ?? _countDiscuss,
  countChapter: countChapter ?? _countChapter,
  countEdit: countEdit ?? _countEdit,
  countHarding: countHarding ?? _countHarding,
  countLike: countLike ?? _countLike,
  countSee: countSee ?? _countSee,
  countAudit: countAudit ?? _countAudit,
  isPrivate: isPrivate ?? _isPrivate,
  countAuditDiscuss: countAuditDiscuss ?? _countAuditDiscuss,
  countAuditCommit: countAuditCommit ?? _countAuditCommit,
  countAuditChapter: countAuditChapter ?? _countAuditChapter,
  countAuditAuthor: countAuditAuthor ?? _countAuditAuthor,
  authorType: authorType ?? _authorType,
  scores: scores ?? _scores,
  descriptionZip: descriptionZip ?? _descriptionZip,
  kind: kind ?? _kind,
);
  num? get id => _id;
  String? get name => _name;
  String? get intro => _intro;
  num? get permission => _permission;
  String? get author => _author;
  num? get category => _category;
  num? get status => _status;
  String? get createTime => _createTime;
  num? get createId => _createId;
  String? get createName => _createName;
  String? get updateName => _updateName;
  String? get updateTime => _updateTime;
  num? get updateId => _updateId;
  String? get tags => _tags;
  String? get updateChapter => _updateChapter;
  num? get updateChapterId => _updateChapterId;
  String? get updateChapterTime => _updateChapterTime;
  num? get diffuse => _diffuse;
  num? get ranks => _ranks;
  num? get types => _types;
  String? get typeName => _typeName;
  num? get auditNumber => _auditNumber;
  String? get auditContent => _auditContent;
  num? get countWord => _countWord;
  String? get imgUrl => _imgUrl;
  num? get isVip => _isVip;
  num? get wid => _wid;
  String? get wname => _wname;
  num? get auditId => _auditId;
  String? get auditName => _auditName;
  String? get auditTime => _auditTime;
  String? get endTime => _endTime;
  String? get source => _source;
  num? get countAuthor => _countAuthor;
  num? get countComment => _countComment;
  num? get countDiscuss => _countDiscuss;
  num? get countChapter => _countChapter;
  num? get countEdit => _countEdit;
  num? get countHarding => _countHarding;
  num? get countLike => _countLike;
  num? get countSee => _countSee;
  num? get countAudit => _countAudit;
  num? get isPrivate => _isPrivate;
  num? get countAuditDiscuss => _countAuditDiscuss;
  num? get countAuditCommit => _countAuditCommit;
  num? get countAuditChapter => _countAuditChapter;
  num? get countAuditAuthor => _countAuditAuthor;
  num? get authorType => _authorType;
  num? get scores => _scores;
  String? get descriptionZip => _descriptionZip;
  num? get kind => _kind;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['intro'] = _intro;
    map['permission'] = _permission;
    map['author'] = _author;
    map['category'] = _category;
    map['status'] = _status;
    map['createTime'] = _createTime;
    map['createId'] = _createId;
    map['createName'] = _createName;
    map['updateName'] = _updateName;
    map['updateTime'] = _updateTime;
    map['updateId'] = _updateId;
    map['tags'] = _tags;
    map['updateChapter'] = _updateChapter;
    map['updateChapterId'] = _updateChapterId;
    map['updateChapterTime'] = _updateChapterTime;
    map['diffuse'] = _diffuse;
    map['ranks'] = _ranks;
    map['types'] = _types;
    map['typeName'] = _typeName;
    map['auditNumber'] = _auditNumber;
    map['auditContent'] = _auditContent;
    map['countWord'] = _countWord;
    map['imgUrl'] = _imgUrl;
    map['isVip'] = _isVip;
    map['wid'] = _wid;
    map['wname'] = _wname;
    map['auditId'] = _auditId;
    map['auditName'] = _auditName;
    map['auditTime'] = _auditTime;
    map['endTime'] = _endTime;
    map['source'] = _source;
    map['countAuthor'] = _countAuthor;
    map['countComment'] = _countComment;
    map['countDiscuss'] = _countDiscuss;
    map['countChapter'] = _countChapter;
    map['countEdit'] = _countEdit;
    map['countHarding'] = _countHarding;
    map['countLike'] = _countLike;
    map['countSee'] = _countSee;
    map['countAudit'] = _countAudit;
    map['isPrivate'] = _isPrivate;
    map['countAuditDiscuss'] = _countAuditDiscuss;
    map['countAuditCommit'] = _countAuditCommit;
    map['countAuditChapter'] = _countAuditChapter;
    map['countAuditAuthor'] = _countAuditAuthor;
    map['authorType'] = _authorType;
    map['scores'] = _scores;
    map['descriptionZip'] = _descriptionZip;
    map['kind'] = _kind;
    return map;
  }

}