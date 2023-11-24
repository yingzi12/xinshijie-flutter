/// id : 1
/// wid : 1
/// wname : "test"
/// softtype : 0
/// countSee : 0
/// countEdit : 0
/// countComment : 0
/// version : 0
/// status : 0
/// tags : "标签"
/// isDelete : 0
/// createId : "1"
/// createTime : "2023-11-19 15:25:00"
/// createName : "admin"
/// updateId : "1"
/// updateTime : "2023-11-19 15:25:00"
/// updateName : "admin"
/// imageUrls : "ttt"
/// title : "这是测试1"
/// intro : "这是一个简介，这是一个简介"
/// idLabels : null
/// extra : null
/// page : null
/// size : null
/// categoryList : [{"id":"1","wid":null,"label":"第一层","pid":"0","tier":null,"code":"111","value":"1$$第一层","pcode":null,"pidpath":""},{"id":"1","wid":null,"label":"第一层","pid":"0","tier":null,"code":"111","value":"1$$第一层","pcode":null,"pidpath":""},{"id":"1","wid":null,"label":"第一层","pid":"0","tier":null,"code":"111","value":"1$$第一层","pcode":null,"pidpath":""},{"id":"1","wid":null,"label":"第一层","pid":"0","tier":null,"code":"111","value":"1$$第一层","pcode":null,"pidpath":""},{"id":"1","wid":null,"label":"第一层","pid":"0","tier":null,"code":"111","value":"1$$第一层","pcode":null,"pidpath":""}]
/// contentList : [{"id":"1","eid":1,"title":"标题","status":0,"content":null,"wid":1,"createId":"106","createName":"admin","createTime":"2023-11-24 19:31:45","updateId":"106","updateName":"admin","updateTime":"2023-11-24 19:31:45","serial":null,"page":null,"size":null,"extra":null,"isUpdate":0,"isNew":0,"contentZip":"<p>玩儿玩儿认为认为让娃儿娃儿娃儿娃儿为认为二娃儿为让</p>"},{"id":"5107","eid":1,"title":"标题","status":0,"content":null,"wid":1,"createId":"106","createName":"admin","createTime":"2023-11-24 19:39:08","updateId":"106","updateName":"admin","updateTime":"2023-11-24 19:39:08","serial":null,"page":null,"size":null,"extra":null,"isUpdate":0,"isNew":0,"contentZip":"<p>撒发发发分 方式撒发发发分 方式撒发发发分 方式</p>"},{"id":"5108","eid":1,"title":"标题","status":0,"content":null,"wid":1,"createId":"106","createName":"admin","createTime":"2023-11-24 19:39:08","updateId":"106","updateName":"admin","updateTime":"2023-11-24 19:39:08","serial":null,"page":null,"size":null,"extra":null,"isUpdate":0,"isNew":0,"contentZip":"<p>撒发发发分 方式撒发发发分 方式撒发发发分 方式</p>"},{"id":"5109","eid":1,"title":"标题","status":0,"content":null,"wid":1,"createId":"106","createName":"admin","createTime":"2023-11-24 19:42:37","updateId":"106","updateName":"admin","updateTime":"2023-11-24 19:42:37","serial":null,"page":null,"size":null,"extra":null,"isUpdate":0,"isNew":0,"contentZip":"<p>二厄特v二te太 二</p>"}]
/// cnameList : ["第一层"]
/// pageHtml : null
/// source : 1
/// forces : null
/// geography : null
/// organismS : null
/// race : null
/// role : null
/// thing : null
/// nextElement : "撒发发发分 方式"
/// previousElement : "这是测试2"
/// nextId : 5343
/// previousId : 2

class ElementEntity {
  ElementEntity({
      num? id, 
      num? wid, 
      String? wname, 
      num? softtype, 
      num? countSee, 
      num? countEdit, 
      num? countComment, 
      num? version, 
      num? status, 
      String? tags, 
      num? isDelete, 
      String? createId, 
      String? createTime, 
      String? createName, 
      String? updateId, 
      String? updateTime, 
      String? updateName, 
      String? imageUrls, 
      String? title, 
      String? intro, 
      dynamic idLabels, 
      dynamic extra, 
      dynamic page, 
      dynamic size, 
      List<ElementCategory>? categoryList, 
      List<ElementContent>? contentList, 
      List<String>? cnameList, 
      dynamic pageHtml, 
      num? source, 
      dynamic forces, 
      dynamic geography, 
      dynamic organismS, 
      dynamic race, 
      dynamic role, 
      dynamic thing, 
      String? nextElement, 
      String? previousElement, 
      num? nextId, 
      num? previousId,}){
    _id = id;
    _wid = wid;
    _wname = wname;
    _softtype = softtype;
    _countSee = countSee;
    _countEdit = countEdit;
    _countComment = countComment;
    _version = version;
    _status = status;
    _tags = tags;
    _isDelete = isDelete;
    _createId = createId;
    _createTime = createTime;
    _createName = createName;
    _updateId = updateId;
    _updateTime = updateTime;
    _updateName = updateName;
    _imageUrls = imageUrls;
    _title = title;
    _intro = intro;
    _idLabels = idLabels;
    _extra = extra;
    _page = page;
    _size = size;
    _categoryList = categoryList;
    _contentList = contentList;
    _cnameList = cnameList;
    _pageHtml = pageHtml;
    _source = source;
    _forces = forces;
    _geography = geography;
    _organismS = organismS;
    _race = race;
    _role = role;
    _thing = thing;
    _nextElement = nextElement;
    _previousElement = previousElement;
    _nextId = nextId;
    _previousId = previousId;
}

  ElementEntity.fromJson(dynamic json) {
    _id = json['id'];
    _wid = json['wid'];
    _wname = json['wname'];
    _softtype = json['softtype'];
    _countSee = json['countSee'];
    _countEdit = json['countEdit'];
    _countComment = json['countComment'];
    _version = json['version'];
    _status = json['status'];
    _tags = json['tags'];
    _isDelete = json['isDelete'];
    _createId = json['createId'];
    _createTime = json['createTime'];
    _createName = json['createName'];
    _updateId = json['updateId'];
    _updateTime = json['updateTime'];
    _updateName = json['updateName'];
    _imageUrls = json['imageUrls'];
    _title = json['title'];
    _intro = json['intro'];
    _idLabels = json['idLabels'];
    _extra = json['extra'];
    _page = json['page'];
    _size = json['size'];
    if (json['categoryList'] != null) {
      _categoryList = [];
      json['categoryList'].forEach((v) {
        _categoryList?.add(ElementCategory.fromJson(v));
      });
    }
    if (json['contentList'] != null) {
      _contentList = [];
      json['contentList'].forEach((v) {
        _contentList?.add(ElementContent.fromJson(v));
      });
    }
    _cnameList = json['cnameList'] != null ? json['cnameList'].cast<String>() : [];
    _pageHtml = json['pageHtml'];
    _source = json['source'];
    _forces = json['forces'];
    _geography = json['geography'];
    _organismS = json['organismS'];
    _race = json['race'];
    _role = json['role'];
    _thing = json['thing'];
    _nextElement = json['nextElement'];
    _previousElement = json['previousElement'];
    _nextId = json['nextId'];
    _previousId = json['previousId'];
  }
  num? _id;
  num? _wid;
  String? _wname;
  num? _softtype;
  num? _countSee;
  num? _countEdit;
  num? _countComment;
  num? _version;
  num? _status;
  String? _tags;
  num? _isDelete;
  String? _createId;
  String? _createTime;
  String? _createName;
  String? _updateId;
  String? _updateTime;
  String? _updateName;
  String? _imageUrls;
  String? _title;
  String? _intro;
  dynamic _idLabels;
  dynamic _extra;
  dynamic _page;
  dynamic _size;
  List<ElementCategory>? _categoryList;
  List<ElementContent>? _contentList;
  List<String>? _cnameList;
  dynamic _pageHtml;
  num? _source;
  dynamic _forces;
  dynamic _geography;
  dynamic _organismS;
  dynamic _race;
  dynamic _role;
  dynamic _thing;
  String? _nextElement;
  String? _previousElement;
  num? _nextId;
  num? _previousId;
ElementEntity copyWith({  num? id,
  num? wid,
  String? wname,
  num? softtype,
  num? countSee,
  num? countEdit,
  num? countComment,
  num? version,
  num? status,
  String? tags,
  num? isDelete,
  String? createId,
  String? createTime,
  String? createName,
  String? updateId,
  String? updateTime,
  String? updateName,
  String? imageUrls,
  String? title,
  String? intro,
  dynamic idLabels,
  dynamic extra,
  dynamic page,
  dynamic size,
  List<ElementCategory>? categoryList,
  List<ElementContent>? contentList,
  List<String>? cnameList,
  dynamic pageHtml,
  num? source,
  dynamic forces,
  dynamic geography,
  dynamic organismS,
  dynamic race,
  dynamic role,
  dynamic thing,
  String? nextElement,
  String? previousElement,
  num? nextId,
  num? previousId,
}) => ElementEntity(  id: id ?? _id,
  wid: wid ?? _wid,
  wname: wname ?? _wname,
  softtype: softtype ?? _softtype,
  countSee: countSee ?? _countSee,
  countEdit: countEdit ?? _countEdit,
  countComment: countComment ?? _countComment,
  version: version ?? _version,
  status: status ?? _status,
  tags: tags ?? _tags,
  isDelete: isDelete ?? _isDelete,
  createId: createId ?? _createId,
  createTime: createTime ?? _createTime,
  createName: createName ?? _createName,
  updateId: updateId ?? _updateId,
  updateTime: updateTime ?? _updateTime,
  updateName: updateName ?? _updateName,
  imageUrls: imageUrls ?? _imageUrls,
  title: title ?? _title,
  intro: intro ?? _intro,
  idLabels: idLabels ?? _idLabels,
  extra: extra ?? _extra,
  page: page ?? _page,
  size: size ?? _size,
  categoryList: categoryList ?? _categoryList,
  contentList: contentList ?? _contentList,
  cnameList: cnameList ?? _cnameList,
  pageHtml: pageHtml ?? _pageHtml,
  source: source ?? _source,
  forces: forces ?? _forces,
  geography: geography ?? _geography,
  organismS: organismS ?? _organismS,
  race: race ?? _race,
  role: role ?? _role,
  thing: thing ?? _thing,
  nextElement: nextElement ?? _nextElement,
  previousElement: previousElement ?? _previousElement,
  nextId: nextId ?? _nextId,
  previousId: previousId ?? _previousId,
);
  num? get id => _id;
  num? get wid => _wid;
  String? get wname => _wname;
  num? get softtype => _softtype;
  num? get countSee => _countSee;
  num? get countEdit => _countEdit;
  num? get countComment => _countComment;
  num? get version => _version;
  num? get status => _status;
  String? get tags => _tags;
  num? get isDelete => _isDelete;
  String? get createId => _createId;
  String? get createTime => _createTime;
  String? get createName => _createName;
  String? get updateId => _updateId;
  String? get updateTime => _updateTime;
  String? get updateName => _updateName;
  String? get imageUrls => _imageUrls;
  String? get title => _title;
  String? get intro => _intro;
  dynamic get idLabels => _idLabels;
  dynamic get extra => _extra;
  dynamic get page => _page;
  dynamic get size => _size;
  List<ElementCategory>? get categoryList => _categoryList;
  List<ElementContent>? get contentList => _contentList;
  List<String>? get cnameList => _cnameList;
  dynamic get pageHtml => _pageHtml;
  num? get source => _source;
  dynamic get forces => _forces;
  dynamic get geography => _geography;
  dynamic get organismS => _organismS;
  dynamic get race => _race;
  dynamic get role => _role;
  dynamic get thing => _thing;
  String? get nextElement => _nextElement;
  String? get previousElement => _previousElement;
  num? get nextId => _nextId;
  num? get previousId => _previousId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['wid'] = _wid;
    map['wname'] = _wname;
    map['softtype'] = _softtype;
    map['countSee'] = _countSee;
    map['countEdit'] = _countEdit;
    map['countComment'] = _countComment;
    map['version'] = _version;
    map['status'] = _status;
    map['tags'] = _tags;
    map['isDelete'] = _isDelete;
    map['createId'] = _createId;
    map['createTime'] = _createTime;
    map['createName'] = _createName;
    map['updateId'] = _updateId;
    map['updateTime'] = _updateTime;
    map['updateName'] = _updateName;
    map['imageUrls'] = _imageUrls;
    map['title'] = _title;
    map['intro'] = _intro;
    map['idLabels'] = _idLabels;
    map['extra'] = _extra;
    map['page'] = _page;
    map['size'] = _size;
    if (_categoryList != null) {
      map['categoryList'] = _categoryList?.map((v) => v.toJson()).toList();
    }
    if (_contentList != null) {
      map['contentList'] = _contentList?.map((v) => v.toJson()).toList();
    }
    map['cnameList'] = _cnameList;
    map['pageHtml'] = _pageHtml;
    map['source'] = _source;
    map['forces'] = _forces;
    map['geography'] = _geography;
    map['organismS'] = _organismS;
    map['race'] = _race;
    map['role'] = _role;
    map['thing'] = _thing;
    map['nextElement'] = _nextElement;
    map['previousElement'] = _previousElement;
    map['nextId'] = _nextId;
    map['previousId'] = _previousId;
    return map;
  }

}

/// id : "1"
/// eid : 1
/// title : "标题"
/// status : 0
/// content : null
/// wid : 1
/// createId : "106"
/// createName : "admin"
/// createTime : "2023-11-24 19:31:45"
/// updateId : "106"
/// updateName : "admin"
/// updateTime : "2023-11-24 19:31:45"
/// serial : null
/// page : null
/// size : null
/// extra : null
/// isUpdate : 0
/// isNew : 0
/// contentZip : "<p>玩儿玩儿认为认为让娃儿娃儿娃儿娃儿为认为二娃儿为让</p>"

class ElementContent {
  ElementContent({
      String? id, 
      num? eid, 
      String? title, 
      num? status, 
      dynamic content, 
      num? wid, 
      String? createId, 
      String? createName, 
      String? createTime, 
      String? updateId, 
      String? updateName, 
      String? updateTime, 
      dynamic serial, 
      dynamic page, 
      dynamic size, 
      dynamic extra, 
      num? isUpdate, 
      num? isNew, 
      String? contentZip,}){
    _id = id;
    _eid = eid;
    _title = title;
    _status = status;
    _content = content;
    _wid = wid;
    _createId = createId;
    _createName = createName;
    _createTime = createTime;
    _updateId = updateId;
    _updateName = updateName;
    _updateTime = updateTime;
    _serial = serial;
    _page = page;
    _size = size;
    _extra = extra;
    _isUpdate = isUpdate;
    _isNew = isNew;
    _contentZip = contentZip;
}

  ElementContent.fromJson(dynamic json) {
    _id = json['id'];
    _eid = json['eid'];
    _title = json['title'];
    _status = json['status'];
    _content = json['content'];
    _wid = json['wid'];
    _createId = json['createId'];
    _createName = json['createName'];
    _createTime = json['createTime'];
    _updateId = json['updateId'];
    _updateName = json['updateName'];
    _updateTime = json['updateTime'];
    _serial = json['serial'];
    _page = json['page'];
    _size = json['size'];
    _extra = json['extra'];
    _isUpdate = json['isUpdate'];
    _isNew = json['isNew'];
    _contentZip = json['contentZip'];
  }
  String? _id;
  num? _eid;
  String? _title;
  num? _status;
  dynamic _content;
  num? _wid;
  String? _createId;
  String? _createName;
  String? _createTime;
  String? _updateId;
  String? _updateName;
  String? _updateTime;
  dynamic _serial;
  dynamic _page;
  dynamic _size;
  dynamic _extra;
  num? _isUpdate;
  num? _isNew;
  String? _contentZip;
ElementContent copyWith({  String? id,
  num? eid,
  String? title,
  num? status,
  dynamic content,
  num? wid,
  String? createId,
  String? createName,
  String? createTime,
  String? updateId,
  String? updateName,
  String? updateTime,
  dynamic serial,
  dynamic page,
  dynamic size,
  dynamic extra,
  num? isUpdate,
  num? isNew,
  String? contentZip,
}) => ElementContent(  id: id ?? _id,
  eid: eid ?? _eid,
  title: title ?? _title,
  status: status ?? _status,
  content: content ?? _content,
  wid: wid ?? _wid,
  createId: createId ?? _createId,
  createName: createName ?? _createName,
  createTime: createTime ?? _createTime,
  updateId: updateId ?? _updateId,
  updateName: updateName ?? _updateName,
  updateTime: updateTime ?? _updateTime,
  serial: serial ?? _serial,
  page: page ?? _page,
  size: size ?? _size,
  extra: extra ?? _extra,
  isUpdate: isUpdate ?? _isUpdate,
  isNew: isNew ?? _isNew,
  contentZip: contentZip ?? _contentZip,
);
  String? get id => _id;
  num? get eid => _eid;
  String? get title => _title;
  num? get status => _status;
  dynamic get content => _content;
  num? get wid => _wid;
  String? get createId => _createId;
  String? get createName => _createName;
  String? get createTime => _createTime;
  String? get updateId => _updateId;
  String? get updateName => _updateName;
  String? get updateTime => _updateTime;
  dynamic get serial => _serial;
  dynamic get page => _page;
  dynamic get size => _size;
  dynamic get extra => _extra;
  num? get isUpdate => _isUpdate;
  num? get isNew => _isNew;
  String? get contentZip => _contentZip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['eid'] = _eid;
    map['title'] = _title;
    map['status'] = _status;
    map['content'] = _content;
    map['wid'] = _wid;
    map['createId'] = _createId;
    map['createName'] = _createName;
    map['createTime'] = _createTime;
    map['updateId'] = _updateId;
    map['updateName'] = _updateName;
    map['updateTime'] = _updateTime;
    map['serial'] = _serial;
    map['page'] = _page;
    map['size'] = _size;
    map['extra'] = _extra;
    map['isUpdate'] = _isUpdate;
    map['isNew'] = _isNew;
    map['contentZip'] = _contentZip;
    return map;
  }

}

/// id : "1"
/// wid : null
/// label : "第一层"
/// pid : "0"
/// tier : null
/// code : "111"
/// value : "1$$第一层"
/// pcode : null
/// pidpath : ""

class ElementCategory {
  ElementCategory({
      String? id, 
      dynamic wid, 
      String? label, 
      String? pid, 
      dynamic tier, 
      String? code, 
      String? value, 
      dynamic pcode, 
      String? pidpath,}){
    _id = id;
    _wid = wid;
    _label = label;
    _pid = pid;
    _tier = tier;
    _code = code;
    _value = value;
    _pcode = pcode;
    _pidpath = pidpath;
}

  ElementCategory.fromJson(dynamic json) {
    _id = json['id'];
    _wid = json['wid'];
    _label = json['label'];
    _pid = json['pid'];
    _tier = json['tier'];
    _code = json['code'];
    _value = json['value'];
    _pcode = json['pcode'];
    _pidpath = json['pidpath'];
  }
  String? _id;
  dynamic _wid;
  String? _label;
  String? _pid;
  dynamic _tier;
  String? _code;
  String? _value;
  dynamic _pcode;
  String? _pidpath;
ElementCategory copyWith({  String? id,
  dynamic wid,
  String? label,
  String? pid,
  dynamic tier,
  String? code,
  String? value,
  dynamic pcode,
  String? pidpath,
}) => ElementCategory(  id: id ?? _id,
  wid: wid ?? _wid,
  label: label ?? _label,
  pid: pid ?? _pid,
  tier: tier ?? _tier,
  code: code ?? _code,
  value: value ?? _value,
  pcode: pcode ?? _pcode,
  pidpath: pidpath ?? _pidpath,
);
  String? get id => _id;
  dynamic get wid => _wid;
  String? get label => _label;
  String? get pid => _pid;
  dynamic get tier => _tier;
  String? get code => _code;
  String? get value => _value;
  dynamic get pcode => _pcode;
  String? get pidpath => _pidpath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['wid'] = _wid;
    map['label'] = _label;
    map['pid'] = _pid;
    map['tier'] = _tier;
    map['code'] = _code;
    map['value'] = _value;
    map['pcode'] = _pcode;
    map['pidpath'] = _pidpath;
    return map;
  }

}