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
    List<BannerVo>? bannerList,
    List<ModuleVo>? moduleList,
    List<HomeTabVo>? homesList,}){
    _bannerList = bannerList;
    _moduleList = moduleList;
    _homesList = homesList;
  }

  HomeEntity.fromJson(dynamic json) {
    if (json['bannerList'] != null) {
      _bannerList = [];
      json['bannerList'].forEach((v) {
        _bannerList?.add(BannerVo.fromJson(v));
      });
    }
    if (json['moduleList'] != null) {
      _moduleList = [];
      json['moduleList'].forEach((v) {
        _moduleList?.add(ModuleVo.fromJson(v));
      });
    }
    if (json['homesList'] != null) {
      _homesList = [];
      json['homesList'].forEach((v) {
        _homesList?.add(HomeTabVo.fromJson(v));
      });
    }
  }
  List<BannerVo>? _bannerList;
  List<ModuleVo>? _moduleList;
  List<HomeTabVo>? _homesList;
  HomeEntity copyWith({  List<BannerVo>? bannerList,
    List<ModuleVo>? moduleList,
    List<HomeTabVo>? homesList,
  }) => HomeEntity(  bannerList: bannerList ?? _bannerList,
    moduleList: moduleList ?? _moduleList,
    homesList: homesList ?? _homesList,
  );
  List<BannerVo>? get bannerList => _bannerList;
  List<ModuleVo>? get moduleList => _moduleList;
  List<HomeTabVo>? get homesList => _homesList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_bannerList != null) {
      map['bannerList'] = _bannerList?.map((v) => v.toJson()).toList();
    }
    if (_moduleList != null) {
      map['moduleList'] = _moduleList?.map((v) => v.toJson()).toList();
    }
    if (_homesList != null) {
      map['homesList'] = _homesList?.map((v) => v.toJson()).toList();
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

class ModuleVo {
  ModuleVo({
      num? id,
      String? name,
      String? mclass,
      num? style,
      num? isFeed,
      num? stauts,
      num? kind,
      List<StoryRemVo>? storyList,
      List<WorldRemVo>? worldList,}){
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

  ModuleVo.fromJson(dynamic json) {
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
        _storyList?.add(StoryRemVo.fromJson(v));
      });
    }
    if (json['worldList'] != null) {
      _worldList = [];
      json['worldList'].forEach((v) {
        _worldList?.add(WorldRemVo.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  String? _mclass;
  num? _style;
  num? _isFeed;
  num? _stauts;
  num? _kind;
  List<StoryRemVo>? _storyList;
  List<WorldRemVo>? _worldList;
  ModuleVo copyWith({  num? id,
  String? name,
  String? mclass,
    num? style,
  num? isFeed,
  num? stauts,
  num? kind,
  List<StoryRemVo>? storyList,
  List<WorldRemVo>? worldList,
}) => ModuleVo(  id: id ?? _id,
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
  num? get style => _style;
  num? get isFeed => _isFeed;
  num? get stauts => _stauts;
  num? get kind => _kind;
  List<StoryRemVo>? get storyList => _storyList;
  List<WorldRemVo>? get worldList => _worldList;

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

class WorldRemVo {
  WorldRemVo({
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
    num? status,
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
    _status = status;
    _isOriginal = isOriginal;
}

  WorldRemVo.fromJson(dynamic json) {
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
    _status=json['status'];
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
  num? _status;
  num? _isOriginal;
  WorldRemVo copyWith({  num? id,
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
}) => WorldRemVo(  id: id ?? _id,
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
    status: status ?? _status,
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
  num? get status=>_status;
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
    map['status']=_status;
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

class StoryRemVo {
  StoryRemVo({
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
    num? status,
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
    _status = status;
    _sname = sname;
}

  StoryRemVo.fromJson(dynamic json) {
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
    _status =json['status'];
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
  num? _status;
  String? _sname;
  StoryRemVo copyWith({  num? id,
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
    num? status,
  String? sname,
}) => StoryRemVo(  id: id ?? _id,
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
    status:status??_status,
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
  num? get status=> _status;
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
    map['status'] =_status;
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

class BannerVo {
  BannerVo({
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

  BannerVo.fromJson(dynamic json) {
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
  BannerVo copyWith({  num? id,
  String? linkText,
  String? linkUrl,
  String? imageUrl,
  String? type,
  String? reason,
  num? kind,
}) => BannerVo(  id: id ?? _id,
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
class HomeTabVo {
  HomeTabVo({
    num? id,
    String? title,
    String? icon,
    String? imageUrl,
    String? type,
    String? reason,
    num? kind,}){
    _id = id;
    _title = title;
    _icon = icon;
    _imageUrl = imageUrl;
    _type = type;
    _reason = reason;
    _kind = kind;
  }

  HomeTabVo.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _icon = json['icon'];
    _imageUrl = json['imageUrl'];
    _type = json['type'];
    _reason = json['reason'];
    _kind = json['kind'];
  }
  num? _id;
  String? _title;
  String? _icon;
  String? _imageUrl;
  String? _type;
  String? _reason;
  num? _kind;
  HomeTabVo copyWith({  num? id,
    String? title,
    String? icon,
    String? imageUrl,
    String? type,
    String? reason,
    num? kind,
  }) => HomeTabVo(  id: id ?? _id,
    title: title ?? _title,
    icon: icon ?? _icon,
    imageUrl: imageUrl ?? _imageUrl,
    type: type ?? _type,
    reason: reason ?? _reason,
    kind: kind ?? _kind,
  );
  num? get id => _id;
  String? get title => _title;
  String? get icon => _icon;
  String? get imageUrl => _imageUrl;
  String? get type => _type;
  String? get reason => _reason;
  num? get kind => _kind;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['icon'] = _icon;
    map['imageUrl'] = _imageUrl;
    map['type'] = _type;
    map['reason'] = _reason;
    map['kind'] = _kind;
    return map;
  }

}