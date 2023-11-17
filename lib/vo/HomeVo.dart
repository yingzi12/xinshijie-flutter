/// code : 0
/// msg : ""
/// data : {"bannerList":[{"id":0,"linkText":"","linkUrl":"","imageUrl":"","type":"","reason":"","kind":0}],"moduleList":[{"id":0,"name":"","mclass":"","style":"","isFeed":0,"stauts":0,"kind":0,"storyList":[{"id":0,"wid":0,"wname":"","intro":"","recType":0,"imgUrl":"","comments":"","crateTime":"","createBy":0,"createName":"","recSorting":0,"stype":"","stag":"","isOriginal":0,"sid":0,"sname":""}],"worldList":[{"id":0,"wid":0,"wname":"","intro":"","recType":0,"imgUrl":"","comments":"","crateTime":"","createBy":0,"createName":"","recSorting":0,"wtype":"","wtag":"","isOriginal":0}]}]}
/// total : 0
/// succ : true
/// fail : true


/// bannerList : [{"id":0,"linkText":"","linkUrl":"","imageUrl":"","type":"","reason":"","kind":0}]
/// moduleList : [{"id":0,"name":"","mclass":"","style":"","isFeed":0,"stauts":0,"kind":0,"storyList":[{"id":0,"wid":0,"wname":"","intro":"","recType":0,"imgUrl":"","comments":"","crateTime":"","createBy":0,"createName":"","recSorting":0,"stype":"","stag":"","isOriginal":0,"sid":0,"sname":""}],"worldList":[{"id":0,"wid":0,"wname":"","intro":"","recType":0,"imgUrl":"","comments":"","crateTime":"","createBy":0,"createName":"","recSorting":0,"wtype":"","wtag":"","isOriginal":0}]}]

class HomeEntity {
  HomeEntity({
      List<BannerList>? bannerList, 
      List<ModuleList>? moduleList,}){
    _bannerList = bannerList;
    _moduleList = moduleList;
}

  HomeEntity.fromJson(dynamic json) {
    if (json['bannerList'] != null) {
      _bannerList = [];
      json['bannerList'].forEach((v) {
        _bannerList?.add(BannerList.fromJson(v));
      });
    }
    if (json['moduleList'] != null) {
      _moduleList = [];
      json['moduleList'].forEach((v) {
        _moduleList?.add(ModuleList.fromJson(v));
      });
    }
  }
  List<BannerList>? _bannerList;
  List<ModuleList>? _moduleList;
  HomeEntity copyWith({  List<BannerList>? bannerList,
  List<ModuleList>? moduleList,
}) => HomeEntity(  bannerList: bannerList ?? _bannerList,
  moduleList: moduleList ?? _moduleList,
);
  List<BannerList>? get bannerList => _bannerList;
  List<ModuleList>? get moduleList => _moduleList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_bannerList != null) {
      map['bannerList'] = _bannerList?.map((v) => v.toJson()).toList();
    }
    if (_moduleList != null) {
      map['moduleList'] = _moduleList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 0
/// name : ""
/// mclass : ""
/// style : ""
/// isFeed : 0
/// stauts : 0
/// kind : 0
/// storyList : [{"id":0,"wid":0,"wname":"","intro":"","recType":0,"imgUrl":"","comments":"","crateTime":"","createBy":0,"createName":"","recSorting":0,"stype":"","stag":"","isOriginal":0,"sid":0,"sname":""}]
/// worldList : [{"id":0,"wid":0,"wname":"","intro":"","recType":0,"imgUrl":"","comments":"","crateTime":"","createBy":0,"createName":"","recSorting":0,"wtype":"","wtag":"","isOriginal":0}]

class ModuleList {
  ModuleList({
      num? id, 
      String? name, 
      String? mclass, 
      String? style, 
      num? isFeed, 
      num? stauts, 
      num? kind, 
      List<StoryList>? storyList, 
      List<WorldList>? worldList,}){
    _id = id;
    _name = name;
    _mclass = mclass;
    _style = style;
    _isFeed = isFeed;
    _stauts = stauts;
    _kind = kind;
    _storyList = storyList;
    _worldList = worldList;
}

  ModuleList.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _mclass = json['mclass'];
    _style = json['style'];
    _isFeed = json['isFeed'];
    _stauts = json['stauts'];
    _kind = json['kind'];
    if (json['storyList'] != null) {
      _storyList = [];
      json['storyList'].forEach((v) {
        _storyList?.add(StoryList.fromJson(v));
      });
    }
    if (json['worldList'] != null) {
      _worldList = [];
      json['worldList'].forEach((v) {
        _worldList?.add(WorldList.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  String? _mclass;
  String? _style;
  num? _isFeed;
  num? _stauts;
  num? _kind;
  List<StoryList>? _storyList;
  List<WorldList>? _worldList;
ModuleList copyWith({  num? id,
  String? name,
  String? mclass,
  String? style,
  num? isFeed,
  num? stauts,
  num? kind,
  List<StoryList>? storyList,
  List<WorldList>? worldList,
}) => ModuleList(  id: id ?? _id,
  name: name ?? _name,
  mclass: mclass ?? _mclass,
  style: style ?? _style,
  isFeed: isFeed ?? _isFeed,
  stauts: stauts ?? _stauts,
  kind: kind ?? _kind,
  storyList: storyList ?? _storyList,
  worldList: worldList ?? _worldList,
);
  num? get id => _id;
  String? get name => _name;
  String? get mclass => _mclass;
  String? get style => _style;
  num? get isFeed => _isFeed;
  num? get stauts => _stauts;
  num? get kind => _kind;
  List<StoryList>? get storyList => _storyList;
  List<WorldList>? get worldList => _worldList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['mclass'] = _mclass;
    map['style'] = _style;
    map['isFeed'] = _isFeed;
    map['stauts'] = _stauts;
    map['kind'] = _kind;
    if (_storyList != null) {
      map['storyList'] = _storyList?.map((v) => v.toJson()).toList();
    }
    if (_worldList != null) {
      map['worldList'] = _worldList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 0
/// wid : 0
/// wname : ""
/// intro : ""
/// recType : 0
/// imgUrl : ""
/// comments : ""
/// crateTime : ""
/// createBy : 0
/// createName : ""
/// recSorting : 0
/// wtype : ""
/// wtag : ""
/// isOriginal : 0

class WorldList {
  WorldList({
      num? id, 
      num? wid, 
      String? wname, 
      String? intro, 
      num? recType, 
      String? imgUrl, 
      String? comments, 
      String? crateTime, 
      num? createBy, 
      String? createName, 
      num? recSorting, 
      String? wtype, 
      String? wtag, 
      num? isOriginal,}){
    _id = id;
    _wid = wid;
    _wname = wname;
    _intro = intro;
    _recType = recType;
    _imgUrl = imgUrl;
    _comments = comments;
    _crateTime = crateTime;
    _createBy = createBy;
    _createName = createName;
    _recSorting = recSorting;
    _wtype = wtype;
    _wtag = wtag;
    _isOriginal = isOriginal;
}

  WorldList.fromJson(dynamic json) {
    _id = json['id'];
    _wid = json['wid'];
    _wname = json['wname'];
    _intro = json['intro'];
    _recType = json['recType'];
    _imgUrl = json['imgUrl'];
    _comments = json['comments'];
    _crateTime = json['crateTime'];
    _createBy = json['createBy'];
    _createName = json['createName'];
    _recSorting = json['recSorting'];
    _wtype = json['wtype'];
    _wtag = json['wtag'];
    _isOriginal = json['isOriginal'];
  }
  num? _id;
  num? _wid;
  String? _wname;
  String? _intro;
  num? _recType;
  String? _imgUrl;
  String? _comments;
  String? _crateTime;
  num? _createBy;
  String? _createName;
  num? _recSorting;
  String? _wtype;
  String? _wtag;
  num? _isOriginal;
WorldList copyWith({  num? id,
  num? wid,
  String? wname,
  String? intro,
  num? recType,
  String? imgUrl,
  String? comments,
  String? crateTime,
  num? createBy,
  String? createName,
  num? recSorting,
  String? wtype,
  String? wtag,
  num? isOriginal,
}) => WorldList(  id: id ?? _id,
  wid: wid ?? _wid,
  wname: wname ?? _wname,
  intro: intro ?? _intro,
  recType: recType ?? _recType,
  imgUrl: imgUrl ?? _imgUrl,
  comments: comments ?? _comments,
  crateTime: crateTime ?? _crateTime,
  createBy: createBy ?? _createBy,
  createName: createName ?? _createName,
  recSorting: recSorting ?? _recSorting,
  wtype: wtype ?? _wtype,
  wtag: wtag ?? _wtag,
  isOriginal: isOriginal ?? _isOriginal,
);
  num? get id => _id;
  num? get wid => _wid;
  String? get wname => _wname;
  String? get intro => _intro;
  num? get recType => _recType;
  String? get imgUrl => _imgUrl;
  String? get comments => _comments;
  String? get crateTime => _crateTime;
  num? get createBy => _createBy;
  String? get createName => _createName;
  num? get recSorting => _recSorting;
  String? get wtype => _wtype;
  String? get wtag => _wtag;
  num? get isOriginal => _isOriginal;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['wid'] = _wid;
    map['wname'] = _wname;
    map['intro'] = _intro;
    map['recType'] = _recType;
    map['imgUrl'] = _imgUrl;
    map['comments'] = _comments;
    map['crateTime'] = _crateTime;
    map['createBy'] = _createBy;
    map['createName'] = _createName;
    map['recSorting'] = _recSorting;
    map['wtype'] = _wtype;
    map['wtag'] = _wtag;
    map['isOriginal'] = _isOriginal;
    return map;
  }

}

/// id : 0
/// wid : 0
/// wname : ""
/// intro : ""
/// recType : 0
/// imgUrl : ""
/// comments : ""
/// crateTime : ""
/// createBy : 0
/// createName : ""
/// recSorting : 0
/// stype : ""
/// stag : ""
/// isOriginal : 0
/// sid : 0
/// sname : ""

class StoryList {
  StoryList({
      num? id, 
      num? wid, 
      String? wname, 
      String? intro, 
      num? recType, 
      String? imgUrl, 
      String? comments, 
      String? crateTime, 
      num? createBy, 
      String? createName, 
      num? recSorting, 
      String? stype, 
      String? stag, 
      num? isOriginal, 
      num? sid, 
      String? sname,}){
    _id = id;
    _wid = wid;
    _wname = wname;
    _intro = intro;
    _recType = recType;
    _imgUrl = imgUrl;
    _comments = comments;
    _crateTime = crateTime;
    _createBy = createBy;
    _createName = createName;
    _recSorting = recSorting;
    _stype = stype;
    _stag = stag;
    _isOriginal = isOriginal;
    _sid = sid;
    _sname = sname;
}

  StoryList.fromJson(dynamic json) {
    _id = json['id'];
    _wid = json['wid'];
    _wname = json['wname'];
    _intro = json['intro'];
    _recType = json['recType'];
    _imgUrl = json['imgUrl'];
    _comments = json['comments'];
    _crateTime = json['crateTime'];
    _createBy = json['createBy'];
    _createName = json['createName'];
    _recSorting = json['recSorting'];
    _stype = json['stype'];
    _stag = json['stag'];
    _isOriginal = json['isOriginal'];
    _sid = json['sid'];
    _sname = json['sname'];
  }
  num? _id;
  num? _wid;
  String? _wname;
  String? _intro;
  num? _recType;
  String? _imgUrl;
  String? _comments;
  String? _crateTime;
  num? _createBy;
  String? _createName;
  num? _recSorting;
  String? _stype;
  String? _stag;
  num? _isOriginal;
  num? _sid;
  String? _sname;
StoryList copyWith({  num? id,
  num? wid,
  String? wname,
  String? intro,
  num? recType,
  String? imgUrl,
  String? comments,
  String? crateTime,
  num? createBy,
  String? createName,
  num? recSorting,
  String? stype,
  String? stag,
  num? isOriginal,
  num? sid,
  String? sname,
}) => StoryList(  id: id ?? _id,
  wid: wid ?? _wid,
  wname: wname ?? _wname,
  intro: intro ?? _intro,
  recType: recType ?? _recType,
  imgUrl: imgUrl ?? _imgUrl,
  comments: comments ?? _comments,
  crateTime: crateTime ?? _crateTime,
  createBy: createBy ?? _createBy,
  createName: createName ?? _createName,
  recSorting: recSorting ?? _recSorting,
  stype: stype ?? _stype,
  stag: stag ?? _stag,
  isOriginal: isOriginal ?? _isOriginal,
  sid: sid ?? _sid,
  sname: sname ?? _sname,
);
  num? get id => _id;
  num? get wid => _wid;
  String? get wname => _wname;
  String? get intro => _intro;
  num? get recType => _recType;
  String? get imgUrl => _imgUrl;
  String? get comments => _comments;
  String? get crateTime => _crateTime;
  num? get createBy => _createBy;
  String? get createName => _createName;
  num? get recSorting => _recSorting;
  String? get stype => _stype;
  String? get stag => _stag;
  num? get isOriginal => _isOriginal;
  num? get sid => _sid;
  String? get sname => _sname;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['wid'] = _wid;
    map['wname'] = _wname;
    map['intro'] = _intro;
    map['recType'] = _recType;
    map['imgUrl'] = _imgUrl;
    map['comments'] = _comments;
    map['crateTime'] = _crateTime;
    map['createBy'] = _createBy;
    map['createName'] = _createName;
    map['recSorting'] = _recSorting;
    map['stype'] = _stype;
    map['stag'] = _stag;
    map['isOriginal'] = _isOriginal;
    map['sid'] = _sid;
    map['sname'] = _sname;
    return map;
  }

}

/// id : 0
/// linkText : ""
/// linkUrl : ""
/// imageUrl : ""
/// type : ""
/// reason : ""
/// kind : 0

class BannerList {
  BannerList({
      num? id, 
      String? linkText, 
      String? linkUrl, 
      String? imageUrl, 
      String? type, 
      String? reason, 
      num? kind,}){
    _id = id;
    _linkText = linkText;
    _linkUrl = linkUrl;
    _imageUrl = imageUrl;
    _type = type;
    _reason = reason;
    _kind = kind;
}

  BannerList.fromJson(dynamic json) {
    _id = json['id'];
    _linkText = json['linkText'];
    _linkUrl = json['linkUrl'];
    _imageUrl = json['imageUrl'];
    _type = json['type'];
    _reason = json['reason'];
    _kind = json['kind'];
  }
  num? _id;
  String? _linkText;
  String? _linkUrl;
  String? _imageUrl;
  String? _type;
  String? _reason;
  num? _kind;
BannerList copyWith({  num? id,
  String? linkText,
  String? linkUrl,
  String? imageUrl,
  String? type,
  String? reason,
  num? kind,
}) => BannerList(  id: id ?? _id,
  linkText: linkText ?? _linkText,
  linkUrl: linkUrl ?? _linkUrl,
  imageUrl: imageUrl ?? _imageUrl,
  type: type ?? _type,
  reason: reason ?? _reason,
  kind: kind ?? _kind,
);
  num? get id => _id;
  String? get linkText => _linkText;
  String? get linkUrl => _linkUrl;
  String? get imageUrl => _imageUrl;
  String? get type => _type;
  String? get reason => _reason;
  num? get kind => _kind;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['linkText'] = _linkText;
    map['linkUrl'] = _linkUrl;
    map['imageUrl'] = _imageUrl;
    map['type'] = _type;
    map['reason'] = _reason;
    map['kind'] = _kind;
    return map;
  }

}