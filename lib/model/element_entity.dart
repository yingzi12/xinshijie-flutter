/// id : 0
/// wid : 0
/// wname : ""
/// softtype : 0
/// countSee : 0
/// countEdit : 0
/// countComment : 0
/// version : 0
/// status : 0
/// tags : ""
/// isDelete : 0
/// createId : 0
/// createTime : ""
/// createName : ""
/// updateId : 0
/// updateTime : ""
/// updateName : ""
/// imageUrls : ""
/// title : ""
/// intro : ""
/// idLabels : ""
/// extra : ""
/// page : 0
/// size : 0
/// categoryList : [{"id":0,"wid":0,"label":"","pid":0,"tier":0,"code":"","value":"","pcode":"","pidpath":""}]
/// contentList : [{"id":0,"eid":0,"title":"","status":0,"content":[],"wid":0,"createId":0,"createName":"","createTime":"","updateId":0,"updateName":"","updateTime":"","serial":0,"page":0,"size":0,"extra":"","isUpdate":0,"isNew":0,"contentZip":""}]
/// cnameList : []
/// pageHtml : ""
/// source : 0
/// forces : {"id":0,"wid":0,"weid":0,"name":"","birthday":"","biography":"","background":"","extra":"","farcesType":"","feature":"","forceCreator":"","mainMembers":"","architecture":"","sphereInfluence":""}
/// geography : {"id":0,"wid":0,"weid":0,"name":"","biography":"","extra":"","kind":"","feature":"","climate":"","livingRace":"","affiliatedForces":"","mainCharacter":"","specialty":"","environment":"","imgUrl":"","districtBelong":"","districtBelongId":0}
/// organismS : {"id":0,"wid":0,"weid":0,"name":"","biography":"","extra":"","kind":"","feature":"","growthHabits":"","distributionArea":"","specialInstructions":""}
/// race : {"id":0,"wid":0,"weid":0,"name":"","birthday":"","biography":"","background":"","extra":"","raceType":"","feature":"","mainMembers":"","sphereInfluence":"","releaseScope":"","mainGatheringPlace":"","mainForces":"","legend":"","custom":""}
/// role : {"id":0,"wid":0,"weid":0,"name":"","birthday":"","biography":"","race":"","raceId":0,"forces":"","forcesId":0,"alias":"","title":"","placeBirth":"","age":"","dateDeath":"","causeDeath":"","character":"","achievement":"","identity":"","mother":"","father":"","child":"","daughter":"","son":"","family":"","background":"","extra":"","specialInstructions":""}
/// thing : {"id":0,"wid":0,"weid":0,"name":"","biography":"","extra":"","kind":"","feature":"","specialInstructions":"","purpose":"","origin":"","material":"","make":""}
/// nextElement : ""
/// previousElement : ""
/// nextId : 0
/// previousId : 0

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
      num? createId, 
      String? createTime, 
      String? createName, 
      num? updateId, 
      String? updateTime, 
      String? updateName, 
      String? imageUrls, 
      String? title, 
      String? intro, 
      String? idLabels, 
      String? extra, 
      num? page, 
      num? size, 
      List<CategoryList>? categoryList, 
      List<ContentList>? contentList, 
      List<dynamic>? cnameList, 
      String? pageHtml, 
      num? source, 
      Forces? forces, 
      Geography? geography, 
      OrganismS? organismS, 
      Race? race, 
      Role? role, 
      Thing? thing, 
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
        _categoryList?.add(CategoryList.fromJson(v));
      });
    }
    if (json['contentList'] != null) {
      _contentList = [];
      json['contentList'].forEach((v) {
        _contentList?.add(ContentList.fromJson(v));
      });
    }

    _pageHtml = json['pageHtml'];
    _source = json['source'];
    _forces = json['forces'] != null ? Forces.fromJson(json['forces']) : null;
    _geography = json['geography'] != null ? Geography.fromJson(json['geography']) : null;
    _organismS = json['organismS'] != null ? OrganismS.fromJson(json['organismS']) : null;
    _race = json['race'] != null ? Race.fromJson(json['race']) : null;
    _role = json['role'] != null ? Role.fromJson(json['role']) : null;
    _thing = json['thing'] != null ? Thing.fromJson(json['thing']) : null;
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
  num? _createId;
  String? _createTime;
  String? _createName;
  num? _updateId;
  String? _updateTime;
  String? _updateName;
  String? _imageUrls;
  String? _title;
  String? _intro;
  String? _idLabels;
  String? _extra;
  num? _page;
  num? _size;
  List<CategoryList>? _categoryList;
  List<ContentList>? _contentList;
  List<dynamic>? _cnameList;
  String? _pageHtml;
  num? _source;
  Forces? _forces;
  Geography? _geography;
  OrganismS? _organismS;
  Race? _race;
  Role? _role;
  Thing? _thing;
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
  num? createId,
  String? createTime,
  String? createName,
  num? updateId,
  String? updateTime,
  String? updateName,
  String? imageUrls,
  String? title,
  String? intro,
  String? idLabels,
  String? extra,
  num? page,
  num? size,
  List<CategoryList>? categoryList,
  List<ContentList>? contentList,
  List<dynamic>? cnameList,
  String? pageHtml,
  num? source,
  Forces? forces,
  Geography? geography,
  OrganismS? organismS,
  Race? race,
  Role? role,
  Thing? thing,
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
  num? get createId => _createId;
  String? get createTime => _createTime;
  String? get createName => _createName;
  num? get updateId => _updateId;
  String? get updateTime => _updateTime;
  String? get updateName => _updateName;
  String? get imageUrls => _imageUrls;
  String? get title => _title;
  String? get intro => _intro;
  String? get idLabels => _idLabels;
  String? get extra => _extra;
  num? get page => _page;
  num? get size => _size;
  List<CategoryList>? get categoryList => _categoryList;
  List<ContentList>? get contentList => _contentList;
  List<dynamic>? get cnameList => _cnameList;
  String? get pageHtml => _pageHtml;
  num? get source => _source;
  Forces? get forces => _forces;
  Geography? get geography => _geography;
  OrganismS? get organismS => _organismS;
  Race? get race => _race;
  Role? get role => _role;
  Thing? get thing => _thing;
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
    if (_cnameList != null) {
      map['cnameList'] = _cnameList?.map((v) => v.toJson()).toList();
    }
    map['pageHtml'] = _pageHtml;
    map['source'] = _source;
    if (_forces != null) {
      map['forces'] = _forces?.toJson();
    }
    if (_geography != null) {
      map['geography'] = _geography?.toJson();
    }
    if (_organismS != null) {
      map['organismS'] = _organismS?.toJson();
    }
    if (_race != null) {
      map['race'] = _race?.toJson();
    }
    if (_role != null) {
      map['role'] = _role?.toJson();
    }
    if (_thing != null) {
      map['thing'] = _thing?.toJson();
    }
    map['nextElement'] = _nextElement;
    map['previousElement'] = _previousElement;
    map['nextId'] = _nextId;
    map['previousId'] = _previousId;
    return map;
  }

}

/// id : 0
/// wid : 0
/// weid : 0
/// name : ""
/// biography : ""
/// extra : ""
/// kind : ""
/// feature : ""
/// specialInstructions : ""
/// purpose : ""
/// origin : ""
/// material : ""
/// make : ""

class Thing {
  Thing({
      num? id, 
      num? wid, 
      num? weid, 
      String? name, 
      String? biography, 
      String? extra, 
      String? kind, 
      String? feature, 
      String? specialInstructions, 
      String? purpose, 
      String? origin, 
      String? material, 
      String? make,}){
    _id = id;
    _wid = wid;
    _weid = weid;
    _name = name;
    _biography = biography;
    _extra = extra;
    _kind = kind;
    _feature = feature;
    _specialInstructions = specialInstructions;
    _purpose = purpose;
    _origin = origin;
    _material = material;
    _make = make;
}

  Thing.fromJson(dynamic json) {
    _id = json['id'];
    _wid = json['wid'];
    _weid = json['weid'];
    _name = json['name'];
    _biography = json['biography'];
    _extra = json['extra'];
    _kind = json['kind'];
    _feature = json['feature'];
    _specialInstructions = json['specialInstructions'];
    _purpose = json['purpose'];
    _origin = json['origin'];
    _material = json['material'];
    _make = json['make'];
  }
  num? _id;
  num? _wid;
  num? _weid;
  String? _name;
  String? _biography;
  String? _extra;
  String? _kind;
  String? _feature;
  String? _specialInstructions;
  String? _purpose;
  String? _origin;
  String? _material;
  String? _make;
Thing copyWith({  num? id,
  num? wid,
  num? weid,
  String? name,
  String? biography,
  String? extra,
  String? kind,
  String? feature,
  String? specialInstructions,
  String? purpose,
  String? origin,
  String? material,
  String? make,
}) => Thing(  id: id ?? _id,
  wid: wid ?? _wid,
  weid: weid ?? _weid,
  name: name ?? _name,
  biography: biography ?? _biography,
  extra: extra ?? _extra,
  kind: kind ?? _kind,
  feature: feature ?? _feature,
  specialInstructions: specialInstructions ?? _specialInstructions,
  purpose: purpose ?? _purpose,
  origin: origin ?? _origin,
  material: material ?? _material,
  make: make ?? _make,
);
  num? get id => _id;
  num? get wid => _wid;
  num? get weid => _weid;
  String? get name => _name;
  String? get biography => _biography;
  String? get extra => _extra;
  String? get kind => _kind;
  String? get feature => _feature;
  String? get specialInstructions => _specialInstructions;
  String? get purpose => _purpose;
  String? get origin => _origin;
  String? get material => _material;
  String? get make => _make;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['wid'] = _wid;
    map['weid'] = _weid;
    map['name'] = _name;
    map['biography'] = _biography;
    map['extra'] = _extra;
    map['kind'] = _kind;
    map['feature'] = _feature;
    map['specialInstructions'] = _specialInstructions;
    map['purpose'] = _purpose;
    map['origin'] = _origin;
    map['material'] = _material;
    map['make'] = _make;
    return map;
  }

}

/// id : 0
/// wid : 0
/// weid : 0
/// name : ""
/// birthday : ""
/// biography : ""
/// race : ""
/// raceId : 0
/// forces : ""
/// forcesId : 0
/// alias : ""
/// title : ""
/// placeBirth : ""
/// age : ""
/// dateDeath : ""
/// causeDeath : ""
/// character : ""
/// achievement : ""
/// identity : ""
/// mother : ""
/// father : ""
/// child : ""
/// daughter : ""
/// son : ""
/// family : ""
/// background : ""
/// extra : ""
/// specialInstructions : ""

class Role {
  Role({
      num? id, 
      num? wid, 
      num? weid, 
      String? name, 
      String? birthday, 
      String? biography, 
      String? race, 
      num? raceId, 
      String? forces, 
      num? forcesId, 
      String? alias, 
      String? title, 
      String? placeBirth, 
      String? age, 
      String? dateDeath, 
      String? causeDeath, 
      String? character, 
      String? achievement, 
      String? identity, 
      String? mother, 
      String? father, 
      String? child, 
      String? daughter, 
      String? son, 
      String? family, 
      String? background, 
      String? extra, 
      String? specialInstructions,}){
    _id = id;
    _wid = wid;
    _weid = weid;
    _name = name;
    _birthday = birthday;
    _biography = biography;
    _race = race;
    _raceId = raceId;
    _forces = forces;
    _forcesId = forcesId;
    _alias = alias;
    _title = title;
    _placeBirth = placeBirth;
    _age = age;
    _dateDeath = dateDeath;
    _causeDeath = causeDeath;
    _character = character;
    _achievement = achievement;
    _identity = identity;
    _mother = mother;
    _father = father;
    _child = child;
    _daughter = daughter;
    _son = son;
    _family = family;
    _background = background;
    _extra = extra;
    _specialInstructions = specialInstructions;
}

  Role.fromJson(dynamic json) {
    _id = json['id'];
    _wid = json['wid'];
    _weid = json['weid'];
    _name = json['name'];
    _birthday = json['birthday'];
    _biography = json['biography'];
    _race = json['race'];
    _raceId = json['raceId'];
    _forces = json['forces'];
    _forcesId = json['forcesId'];
    _alias = json['alias'];
    _title = json['title'];
    _placeBirth = json['placeBirth'];
    _age = json['age'];
    _dateDeath = json['dateDeath'];
    _causeDeath = json['causeDeath'];
    _character = json['character'];
    _achievement = json['achievement'];
    _identity = json['identity'];
    _mother = json['mother'];
    _father = json['father'];
    _child = json['child'];
    _daughter = json['daughter'];
    _son = json['son'];
    _family = json['family'];
    _background = json['background'];
    _extra = json['extra'];
    _specialInstructions = json['specialInstructions'];
  }
  num? _id;
  num? _wid;
  num? _weid;
  String? _name;
  String? _birthday;
  String? _biography;
  String? _race;
  num? _raceId;
  String? _forces;
  num? _forcesId;
  String? _alias;
  String? _title;
  String? _placeBirth;
  String? _age;
  String? _dateDeath;
  String? _causeDeath;
  String? _character;
  String? _achievement;
  String? _identity;
  String? _mother;
  String? _father;
  String? _child;
  String? _daughter;
  String? _son;
  String? _family;
  String? _background;
  String? _extra;
  String? _specialInstructions;
Role copyWith({  num? id,
  num? wid,
  num? weid,
  String? name,
  String? birthday,
  String? biography,
  String? race,
  num? raceId,
  String? forces,
  num? forcesId,
  String? alias,
  String? title,
  String? placeBirth,
  String? age,
  String? dateDeath,
  String? causeDeath,
  String? character,
  String? achievement,
  String? identity,
  String? mother,
  String? father,
  String? child,
  String? daughter,
  String? son,
  String? family,
  String? background,
  String? extra,
  String? specialInstructions,
}) => Role(  id: id ?? _id,
  wid: wid ?? _wid,
  weid: weid ?? _weid,
  name: name ?? _name,
  birthday: birthday ?? _birthday,
  biography: biography ?? _biography,
  race: race ?? _race,
  raceId: raceId ?? _raceId,
  forces: forces ?? _forces,
  forcesId: forcesId ?? _forcesId,
  alias: alias ?? _alias,
  title: title ?? _title,
  placeBirth: placeBirth ?? _placeBirth,
  age: age ?? _age,
  dateDeath: dateDeath ?? _dateDeath,
  causeDeath: causeDeath ?? _causeDeath,
  character: character ?? _character,
  achievement: achievement ?? _achievement,
  identity: identity ?? _identity,
  mother: mother ?? _mother,
  father: father ?? _father,
  child: child ?? _child,
  daughter: daughter ?? _daughter,
  son: son ?? _son,
  family: family ?? _family,
  background: background ?? _background,
  extra: extra ?? _extra,
  specialInstructions: specialInstructions ?? _specialInstructions,
);
  num? get id => _id;
  num? get wid => _wid;
  num? get weid => _weid;
  String? get name => _name;
  String? get birthday => _birthday;
  String? get biography => _biography;
  String? get race => _race;
  num? get raceId => _raceId;
  String? get forces => _forces;
  num? get forcesId => _forcesId;
  String? get alias => _alias;
  String? get title => _title;
  String? get placeBirth => _placeBirth;
  String? get age => _age;
  String? get dateDeath => _dateDeath;
  String? get causeDeath => _causeDeath;
  String? get character => _character;
  String? get achievement => _achievement;
  String? get identity => _identity;
  String? get mother => _mother;
  String? get father => _father;
  String? get child => _child;
  String? get daughter => _daughter;
  String? get son => _son;
  String? get family => _family;
  String? get background => _background;
  String? get extra => _extra;
  String? get specialInstructions => _specialInstructions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['wid'] = _wid;
    map['weid'] = _weid;
    map['name'] = _name;
    map['birthday'] = _birthday;
    map['biography'] = _biography;
    map['race'] = _race;
    map['raceId'] = _raceId;
    map['forces'] = _forces;
    map['forcesId'] = _forcesId;
    map['alias'] = _alias;
    map['title'] = _title;
    map['placeBirth'] = _placeBirth;
    map['age'] = _age;
    map['dateDeath'] = _dateDeath;
    map['causeDeath'] = _causeDeath;
    map['character'] = _character;
    map['achievement'] = _achievement;
    map['identity'] = _identity;
    map['mother'] = _mother;
    map['father'] = _father;
    map['child'] = _child;
    map['daughter'] = _daughter;
    map['son'] = _son;
    map['family'] = _family;
    map['background'] = _background;
    map['extra'] = _extra;
    map['specialInstructions'] = _specialInstructions;
    return map;
  }

}

/// id : 0
/// wid : 0
/// weid : 0
/// name : ""
/// birthday : ""
/// biography : ""
/// background : ""
/// extra : ""
/// raceType : ""
/// feature : ""
/// mainMembers : ""
/// sphereInfluence : ""
/// releaseScope : ""
/// mainGatheringPlace : ""
/// mainForces : ""
/// legend : ""
/// custom : ""

class Race {
  Race({
      num? id, 
      num? wid, 
      num? weid, 
      String? name, 
      String? birthday, 
      String? biography, 
      String? background, 
      String? extra, 
      String? raceType, 
      String? feature, 
      String? mainMembers, 
      String? sphereInfluence, 
      String? releaseScope, 
      String? mainGatheringPlace, 
      String? mainForces, 
      String? legend, 
      String? custom,}){
    _id = id;
    _wid = wid;
    _weid = weid;
    _name = name;
    _birthday = birthday;
    _biography = biography;
    _background = background;
    _extra = extra;
    _raceType = raceType;
    _feature = feature;
    _mainMembers = mainMembers;
    _sphereInfluence = sphereInfluence;
    _releaseScope = releaseScope;
    _mainGatheringPlace = mainGatheringPlace;
    _mainForces = mainForces;
    _legend = legend;
    _custom = custom;
}

  Race.fromJson(dynamic json) {
    _id = json['id'];
    _wid = json['wid'];
    _weid = json['weid'];
    _name = json['name'];
    _birthday = json['birthday'];
    _biography = json['biography'];
    _background = json['background'];
    _extra = json['extra'];
    _raceType = json['raceType'];
    _feature = json['feature'];
    _mainMembers = json['mainMembers'];
    _sphereInfluence = json['sphereInfluence'];
    _releaseScope = json['releaseScope'];
    _mainGatheringPlace = json['mainGatheringPlace'];
    _mainForces = json['mainForces'];
    _legend = json['legend'];
    _custom = json['custom'];
  }
  num? _id;
  num? _wid;
  num? _weid;
  String? _name;
  String? _birthday;
  String? _biography;
  String? _background;
  String? _extra;
  String? _raceType;
  String? _feature;
  String? _mainMembers;
  String? _sphereInfluence;
  String? _releaseScope;
  String? _mainGatheringPlace;
  String? _mainForces;
  String? _legend;
  String? _custom;
Race copyWith({  num? id,
  num? wid,
  num? weid,
  String? name,
  String? birthday,
  String? biography,
  String? background,
  String? extra,
  String? raceType,
  String? feature,
  String? mainMembers,
  String? sphereInfluence,
  String? releaseScope,
  String? mainGatheringPlace,
  String? mainForces,
  String? legend,
  String? custom,
}) => Race(  id: id ?? _id,
  wid: wid ?? _wid,
  weid: weid ?? _weid,
  name: name ?? _name,
  birthday: birthday ?? _birthday,
  biography: biography ?? _biography,
  background: background ?? _background,
  extra: extra ?? _extra,
  raceType: raceType ?? _raceType,
  feature: feature ?? _feature,
  mainMembers: mainMembers ?? _mainMembers,
  sphereInfluence: sphereInfluence ?? _sphereInfluence,
  releaseScope: releaseScope ?? _releaseScope,
  mainGatheringPlace: mainGatheringPlace ?? _mainGatheringPlace,
  mainForces: mainForces ?? _mainForces,
  legend: legend ?? _legend,
  custom: custom ?? _custom,
);
  num? get id => _id;
  num? get wid => _wid;
  num? get weid => _weid;
  String? get name => _name;
  String? get birthday => _birthday;
  String? get biography => _biography;
  String? get background => _background;
  String? get extra => _extra;
  String? get raceType => _raceType;
  String? get feature => _feature;
  String? get mainMembers => _mainMembers;
  String? get sphereInfluence => _sphereInfluence;
  String? get releaseScope => _releaseScope;
  String? get mainGatheringPlace => _mainGatheringPlace;
  String? get mainForces => _mainForces;
  String? get legend => _legend;
  String? get custom => _custom;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['wid'] = _wid;
    map['weid'] = _weid;
    map['name'] = _name;
    map['birthday'] = _birthday;
    map['biography'] = _biography;
    map['background'] = _background;
    map['extra'] = _extra;
    map['raceType'] = _raceType;
    map['feature'] = _feature;
    map['mainMembers'] = _mainMembers;
    map['sphereInfluence'] = _sphereInfluence;
    map['releaseScope'] = _releaseScope;
    map['mainGatheringPlace'] = _mainGatheringPlace;
    map['mainForces'] = _mainForces;
    map['legend'] = _legend;
    map['custom'] = _custom;
    return map;
  }

}

/// id : 0
/// wid : 0
/// weid : 0
/// name : ""
/// biography : ""
/// extra : ""
/// kind : ""
/// feature : ""
/// growthHabits : ""
/// distributionArea : ""
/// specialInstructions : ""

class OrganismS {
  OrganismS({
      num? id, 
      num? wid, 
      num? weid, 
      String? name, 
      String? biography, 
      String? extra, 
      String? kind, 
      String? feature, 
      String? growthHabits, 
      String? distributionArea, 
      String? specialInstructions,}){
    _id = id;
    _wid = wid;
    _weid = weid;
    _name = name;
    _biography = biography;
    _extra = extra;
    _kind = kind;
    _feature = feature;
    _growthHabits = growthHabits;
    _distributionArea = distributionArea;
    _specialInstructions = specialInstructions;
}

  OrganismS.fromJson(dynamic json) {
    _id = json['id'];
    _wid = json['wid'];
    _weid = json['weid'];
    _name = json['name'];
    _biography = json['biography'];
    _extra = json['extra'];
    _kind = json['kind'];
    _feature = json['feature'];
    _growthHabits = json['growthHabits'];
    _distributionArea = json['distributionArea'];
    _specialInstructions = json['specialInstructions'];
  }
  num? _id;
  num? _wid;
  num? _weid;
  String? _name;
  String? _biography;
  String? _extra;
  String? _kind;
  String? _feature;
  String? _growthHabits;
  String? _distributionArea;
  String? _specialInstructions;
OrganismS copyWith({  num? id,
  num? wid,
  num? weid,
  String? name,
  String? biography,
  String? extra,
  String? kind,
  String? feature,
  String? growthHabits,
  String? distributionArea,
  String? specialInstructions,
}) => OrganismS(  id: id ?? _id,
  wid: wid ?? _wid,
  weid: weid ?? _weid,
  name: name ?? _name,
  biography: biography ?? _biography,
  extra: extra ?? _extra,
  kind: kind ?? _kind,
  feature: feature ?? _feature,
  growthHabits: growthHabits ?? _growthHabits,
  distributionArea: distributionArea ?? _distributionArea,
  specialInstructions: specialInstructions ?? _specialInstructions,
);
  num? get id => _id;
  num? get wid => _wid;
  num? get weid => _weid;
  String? get name => _name;
  String? get biography => _biography;
  String? get extra => _extra;
  String? get kind => _kind;
  String? get feature => _feature;
  String? get growthHabits => _growthHabits;
  String? get distributionArea => _distributionArea;
  String? get specialInstructions => _specialInstructions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['wid'] = _wid;
    map['weid'] = _weid;
    map['name'] = _name;
    map['biography'] = _biography;
    map['extra'] = _extra;
    map['kind'] = _kind;
    map['feature'] = _feature;
    map['growthHabits'] = _growthHabits;
    map['distributionArea'] = _distributionArea;
    map['specialInstructions'] = _specialInstructions;
    return map;
  }

}

/// id : 0
/// wid : 0
/// weid : 0
/// name : ""
/// biography : ""
/// extra : ""
/// kind : ""
/// feature : ""
/// climate : ""
/// livingRace : ""
/// affiliatedForces : ""
/// mainCharacter : ""
/// specialty : ""
/// environment : ""
/// imgUrl : ""
/// districtBelong : ""
/// districtBelongId : 0

class Geography {
  Geography({
      num? id, 
      num? wid, 
      num? weid, 
      String? name, 
      String? biography, 
      String? extra, 
      String? kind, 
      String? feature, 
      String? climate, 
      String? livingRace, 
      String? affiliatedForces, 
      String? mainCharacter, 
      String? specialty, 
      String? environment, 
      String? imgUrl, 
      String? districtBelong, 
      num? districtBelongId,}){
    _id = id;
    _wid = wid;
    _weid = weid;
    _name = name;
    _biography = biography;
    _extra = extra;
    _kind = kind;
    _feature = feature;
    _climate = climate;
    _livingRace = livingRace;
    _affiliatedForces = affiliatedForces;
    _mainCharacter = mainCharacter;
    _specialty = specialty;
    _environment = environment;
    _imgUrl = imgUrl;
    _districtBelong = districtBelong;
    _districtBelongId = districtBelongId;
}

  Geography.fromJson(dynamic json) {
    _id = json['id'];
    _wid = json['wid'];
    _weid = json['weid'];
    _name = json['name'];
    _biography = json['biography'];
    _extra = json['extra'];
    _kind = json['kind'];
    _feature = json['feature'];
    _climate = json['climate'];
    _livingRace = json['livingRace'];
    _affiliatedForces = json['affiliatedForces'];
    _mainCharacter = json['mainCharacter'];
    _specialty = json['specialty'];
    _environment = json['environment'];
    _imgUrl = json['imgUrl'];
    _districtBelong = json['districtBelong'];
    _districtBelongId = json['districtBelongId'];
  }
  num? _id;
  num? _wid;
  num? _weid;
  String? _name;
  String? _biography;
  String? _extra;
  String? _kind;
  String? _feature;
  String? _climate;
  String? _livingRace;
  String? _affiliatedForces;
  String? _mainCharacter;
  String? _specialty;
  String? _environment;
  String? _imgUrl;
  String? _districtBelong;
  num? _districtBelongId;
Geography copyWith({  num? id,
  num? wid,
  num? weid,
  String? name,
  String? biography,
  String? extra,
  String? kind,
  String? feature,
  String? climate,
  String? livingRace,
  String? affiliatedForces,
  String? mainCharacter,
  String? specialty,
  String? environment,
  String? imgUrl,
  String? districtBelong,
  num? districtBelongId,
}) => Geography(  id: id ?? _id,
  wid: wid ?? _wid,
  weid: weid ?? _weid,
  name: name ?? _name,
  biography: biography ?? _biography,
  extra: extra ?? _extra,
  kind: kind ?? _kind,
  feature: feature ?? _feature,
  climate: climate ?? _climate,
  livingRace: livingRace ?? _livingRace,
  affiliatedForces: affiliatedForces ?? _affiliatedForces,
  mainCharacter: mainCharacter ?? _mainCharacter,
  specialty: specialty ?? _specialty,
  environment: environment ?? _environment,
  imgUrl: imgUrl ?? _imgUrl,
  districtBelong: districtBelong ?? _districtBelong,
  districtBelongId: districtBelongId ?? _districtBelongId,
);
  num? get id => _id;
  num? get wid => _wid;
  num? get weid => _weid;
  String? get name => _name;
  String? get biography => _biography;
  String? get extra => _extra;
  String? get kind => _kind;
  String? get feature => _feature;
  String? get climate => _climate;
  String? get livingRace => _livingRace;
  String? get affiliatedForces => _affiliatedForces;
  String? get mainCharacter => _mainCharacter;
  String? get specialty => _specialty;
  String? get environment => _environment;
  String? get imgUrl => _imgUrl;
  String? get districtBelong => _districtBelong;
  num? get districtBelongId => _districtBelongId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['wid'] = _wid;
    map['weid'] = _weid;
    map['name'] = _name;
    map['biography'] = _biography;
    map['extra'] = _extra;
    map['kind'] = _kind;
    map['feature'] = _feature;
    map['climate'] = _climate;
    map['livingRace'] = _livingRace;
    map['affiliatedForces'] = _affiliatedForces;
    map['mainCharacter'] = _mainCharacter;
    map['specialty'] = _specialty;
    map['environment'] = _environment;
    map['imgUrl'] = _imgUrl;
    map['districtBelong'] = _districtBelong;
    map['districtBelongId'] = _districtBelongId;
    return map;
  }

}

/// id : 0
/// wid : 0
/// weid : 0
/// name : ""
/// birthday : ""
/// biography : ""
/// background : ""
/// extra : ""
/// farcesType : ""
/// feature : ""
/// forceCreator : ""
/// mainMembers : ""
/// architecture : ""
/// sphereInfluence : ""

class Forces {
  Forces({
      num? id, 
      num? wid, 
      num? weid, 
      String? name, 
      String? birthday, 
      String? biography, 
      String? background, 
      String? extra, 
      String? farcesType, 
      String? feature, 
      String? forceCreator, 
      String? mainMembers, 
      String? architecture, 
      String? sphereInfluence,}){
    _id = id;
    _wid = wid;
    _weid = weid;
    _name = name;
    _birthday = birthday;
    _biography = biography;
    _background = background;
    _extra = extra;
    _farcesType = farcesType;
    _feature = feature;
    _forceCreator = forceCreator;
    _mainMembers = mainMembers;
    _architecture = architecture;
    _sphereInfluence = sphereInfluence;
}

  Forces.fromJson(dynamic json) {
    _id = json['id'];
    _wid = json['wid'];
    _weid = json['weid'];
    _name = json['name'];
    _birthday = json['birthday'];
    _biography = json['biography'];
    _background = json['background'];
    _extra = json['extra'];
    _farcesType = json['farcesType'];
    _feature = json['feature'];
    _forceCreator = json['forceCreator'];
    _mainMembers = json['mainMembers'];
    _architecture = json['architecture'];
    _sphereInfluence = json['sphereInfluence'];
  }
  num? _id;
  num? _wid;
  num? _weid;
  String? _name;
  String? _birthday;
  String? _biography;
  String? _background;
  String? _extra;
  String? _farcesType;
  String? _feature;
  String? _forceCreator;
  String? _mainMembers;
  String? _architecture;
  String? _sphereInfluence;
Forces copyWith({  num? id,
  num? wid,
  num? weid,
  String? name,
  String? birthday,
  String? biography,
  String? background,
  String? extra,
  String? farcesType,
  String? feature,
  String? forceCreator,
  String? mainMembers,
  String? architecture,
  String? sphereInfluence,
}) => Forces(  id: id ?? _id,
  wid: wid ?? _wid,
  weid: weid ?? _weid,
  name: name ?? _name,
  birthday: birthday ?? _birthday,
  biography: biography ?? _biography,
  background: background ?? _background,
  extra: extra ?? _extra,
  farcesType: farcesType ?? _farcesType,
  feature: feature ?? _feature,
  forceCreator: forceCreator ?? _forceCreator,
  mainMembers: mainMembers ?? _mainMembers,
  architecture: architecture ?? _architecture,
  sphereInfluence: sphereInfluence ?? _sphereInfluence,
);
  num? get id => _id;
  num? get wid => _wid;
  num? get weid => _weid;
  String? get name => _name;
  String? get birthday => _birthday;
  String? get biography => _biography;
  String? get background => _background;
  String? get extra => _extra;
  String? get farcesType => _farcesType;
  String? get feature => _feature;
  String? get forceCreator => _forceCreator;
  String? get mainMembers => _mainMembers;
  String? get architecture => _architecture;
  String? get sphereInfluence => _sphereInfluence;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['wid'] = _wid;
    map['weid'] = _weid;
    map['name'] = _name;
    map['birthday'] = _birthday;
    map['biography'] = _biography;
    map['background'] = _background;
    map['extra'] = _extra;
    map['farcesType'] = _farcesType;
    map['feature'] = _feature;
    map['forceCreator'] = _forceCreator;
    map['mainMembers'] = _mainMembers;
    map['architecture'] = _architecture;
    map['sphereInfluence'] = _sphereInfluence;
    return map;
  }

}

/// id : 0
/// eid : 0
/// title : ""
/// status : 0
/// content : []
/// wid : 0
/// createId : 0
/// createName : ""
/// createTime : ""
/// updateId : 0
/// updateName : ""
/// updateTime : ""
/// serial : 0
/// page : 0
/// size : 0
/// extra : ""
/// isUpdate : 0
/// isNew : 0
/// contentZip : ""

class ContentList {
  ContentList({
      num? id, 
      num? eid, 
      String? title, 
      num? status, 
      List<dynamic>? content, 
      num? wid, 
      num? createId, 
      String? createName, 
      String? createTime, 
      num? updateId, 
      String? updateName, 
      String? updateTime, 
      num? serial, 
      num? page, 
      num? size, 
      String? extra, 
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

  ContentList.fromJson(dynamic json) {
    _id = json['id'];
    _eid = json['eid'];
    _title = json['title'];
    _status = json['status'];
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
  num? _id;
  num? _eid;
  String? _title;
  num? _status;
  List<dynamic>? _content;
  num? _wid;
  num? _createId;
  String? _createName;
  String? _createTime;
  num? _updateId;
  String? _updateName;
  String? _updateTime;
  num? _serial;
  num? _page;
  num? _size;
  String? _extra;
  num? _isUpdate;
  num? _isNew;
  String? _contentZip;
ContentList copyWith({  num? id,
  num? eid,
  String? title,
  num? status,
  List<dynamic>? content,
  num? wid,
  num? createId,
  String? createName,
  String? createTime,
  num? updateId,
  String? updateName,
  String? updateTime,
  num? serial,
  num? page,
  num? size,
  String? extra,
  num? isUpdate,
  num? isNew,
  String? contentZip,
}) => ContentList(  id: id ?? _id,
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
  num? get id => _id;
  num? get eid => _eid;
  String? get title => _title;
  num? get status => _status;
  List<dynamic>? get content => _content;
  num? get wid => _wid;
  num? get createId => _createId;
  String? get createName => _createName;
  String? get createTime => _createTime;
  num? get updateId => _updateId;
  String? get updateName => _updateName;
  String? get updateTime => _updateTime;
  num? get serial => _serial;
  num? get page => _page;
  num? get size => _size;
  String? get extra => _extra;
  num? get isUpdate => _isUpdate;
  num? get isNew => _isNew;
  String? get contentZip => _contentZip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['eid'] = _eid;
    map['title'] = _title;
    map['status'] = _status;
    if (_content != null) {
      map['content'] = _content?.map((v) => v.toJson()).toList();
    }
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

/// id : 0
/// wid : 0
/// label : ""
/// pid : 0
/// tier : 0
/// code : ""
/// value : ""
/// pcode : ""
/// pidpath : ""

class CategoryList {
  CategoryList({
      num? id, 
      num? wid, 
      String? label, 
      num? pid, 
      num? tier, 
      String? code, 
      String? value, 
      String? pcode, 
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

  CategoryList.fromJson(dynamic json) {
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
  num? _id;
  num? _wid;
  String? _label;
  num? _pid;
  num? _tier;
  String? _code;
  String? _value;
  String? _pcode;
  String? _pidpath;
CategoryList copyWith({  num? id,
  num? wid,
  String? label,
  num? pid,
  num? tier,
  String? code,
  String? value,
  String? pcode,
  String? pidpath,
}) => CategoryList(  id: id ?? _id,
  wid: wid ?? _wid,
  label: label ?? _label,
  pid: pid ?? _pid,
  tier: tier ?? _tier,
  code: code ?? _code,
  value: value ?? _value,
  pcode: pcode ?? _pcode,
  pidpath: pidpath ?? _pidpath,
);
  num? get id => _id;
  num? get wid => _wid;
  String? get label => _label;
  num? get pid => _pid;
  num? get tier => _tier;
  String? get code => _code;
  String? get value => _value;
  String? get pcode => _pcode;
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