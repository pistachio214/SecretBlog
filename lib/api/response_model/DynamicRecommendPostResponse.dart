class DynamicRecommendPostResponse {
  DynamicRecommendPostResponse({
      num? code, 
      String? message, 
      Data? data,}){
    _code = code;
    _message = message;
    _data = data;
}

  DynamicRecommendPostResponse.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _code;
  String? _message;
  Data? _data;
DynamicRecommendPostResponse copyWith({  num? code,
  String? message,
  Data? data,
}) => DynamicRecommendPostResponse(  code: code ?? _code,
  message: message ?? _message,
  data: data ?? _data,
);
  num? get code => _code;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      num? currentPage, 
      num? perPage, 
      num? total, 
      List<Items>? items,}){
    _currentPage = currentPage;
    _perPage = perPage;
    _total = total;
    _items = items;
}

  Data.fromJson(dynamic json) {
    _currentPage = json['currentPage'];
    _perPage = json['perPage'];
    _total = json['total'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
  }
  num? _currentPage;
  num? _perPage;
  num? _total;
  List<Items>? _items;
Data copyWith({  num? currentPage,
  num? perPage,
  num? total,
  List<Items>? items,
}) => Data(  currentPage: currentPage ?? _currentPage,
  perPage: perPage ?? _perPage,
  total: total ?? _total,
  items: items ?? _items,
);
  num? get currentPage => _currentPage;
  num? get perPage => _perPage;
  num? get total => _total;
  List<Items>? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['currentPage'] = _currentPage;
    map['perPage'] = _perPage;
    map['total'] = _total;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Items {
  Items({
      num? id, 
      num? userId, 
      String? title, 
      num? type, 
      num? postType, 
      String? content, 
      dynamic images, 
      num? hotNum, 
      num? status, 
      num? likeNum, 
      num? reviewNum, 
      String? createdAt, 
      Users? users, 
      List<Files>? files, 
      List<String>? tags,}){
    _id = id;
    _userId = userId;
    _title = title;
    _type = type;
    _postType = postType;
    _content = content;
    _images = images;
    _hotNum = hotNum;
    _status = status;
    _likeNum = likeNum;
    _reviewNum = reviewNum;
    _createdAt = createdAt;
    _users = users;
    _files = files;
    _tags = tags;
}

  Items.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _title = json['title'];
    _type = json['type'];
    _postType = json['postType'];
    _content = json['content'];
    _images = json['images'];
    _hotNum = json['hotNum'];
    _status = json['status'];
    _likeNum = json['likeNum'];
    _reviewNum = json['reviewNum'];
    _createdAt = json['createdAt'];
    _users = json['users'] != null ? Users.fromJson(json['users']) : null;
    if (json['files'] != null) {
      _files = [];
      json['files'].forEach((v) {
        _files?.add(Files.fromJson(v));
      });
    }
    _tags = json['tags'] != null ? json['tags'].cast<String>() : [];
  }
  num? _id;
  num? _userId;
  String? _title;
  num? _type;
  num? _postType;
  String? _content;
  dynamic _images;
  num? _hotNum;
  num? _status;
  num? _likeNum;
  num? _reviewNum;
  String? _createdAt;
  Users? _users;
  List<Files>? _files;
  List<String>? _tags;
Items copyWith({  num? id,
  num? userId,
  String? title,
  num? type,
  num? postType,
  String? content,
  dynamic images,
  num? hotNum,
  num? status,
  num? likeNum,
  num? reviewNum,
  String? createdAt,
  Users? users,
  List<Files>? files,
  List<String>? tags,
}) => Items(  id: id ?? _id,
  userId: userId ?? _userId,
  title: title ?? _title,
  type: type ?? _type,
  postType: postType ?? _postType,
  content: content ?? _content,
  images: images ?? _images,
  hotNum: hotNum ?? _hotNum,
  status: status ?? _status,
  likeNum: likeNum ?? _likeNum,
  reviewNum: reviewNum ?? _reviewNum,
  createdAt: createdAt ?? _createdAt,
  users: users ?? _users,
  files: files ?? _files,
  tags: tags ?? _tags,
);
  num? get id => _id;
  num? get userId => _userId;
  String? get title => _title;
  num? get type => _type;
  num? get postType => _postType;
  String? get content => _content;
  dynamic get images => _images;
  num? get hotNum => _hotNum;
  num? get status => _status;
  num? get likeNum => _likeNum;
  num? get reviewNum => _reviewNum;
  String? get createdAt => _createdAt;
  Users? get users => _users;
  List<Files>? get files => _files;
  List<String>? get tags => _tags;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['title'] = _title;
    map['type'] = _type;
    map['postType'] = _postType;
    map['content'] = _content;
    map['images'] = _images;
    map['hotNum'] = _hotNum;
    map['status'] = _status;
    map['likeNum'] = _likeNum;
    map['reviewNum'] = _reviewNum;
    map['createdAt'] = _createdAt;
    if (_users != null) {
      map['users'] = _users?.toJson();
    }
    if (_files != null) {
      map['files'] = _files?.map((v) => v.toJson()).toList();
    }
    map['tags'] = _tags;
    return map;
  }

}

class Files {
  Files({
      num? postId, 
      String? url,}){
    _postId = postId;
    _url = url;
}

  Files.fromJson(dynamic json) {
    _postId = json['postId'];
    _url = json['url'];
  }
  num? _postId;
  String? _url;
Files copyWith({  num? postId,
  String? url,
}) => Files(  postId: postId ?? _postId,
  url: url ?? _url,
);
  num? get postId => _postId;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['postId'] = _postId;
    map['url'] = _url;
    return map;
  }

}

class Users {
  Users({
      num? id, 
      String? nickname, 
      String? avatar, 
      UserExtend? userExtend,}){
    _id = id;
    _nickname = nickname;
    _avatar = avatar;
    _userExtend = userExtend;
}

  Users.fromJson(dynamic json) {
    _id = json['id'];
    _nickname = json['nickname'];
    _avatar = json['avatar'];
    _userExtend = json['userExtend'] != null ? UserExtend.fromJson(json['userExtend']) : null;
  }
  num? _id;
  String? _nickname;
  String? _avatar;
  UserExtend? _userExtend;
Users copyWith({  num? id,
  String? nickname,
  String? avatar,
  UserExtend? userExtend,
}) => Users(  id: id ?? _id,
  nickname: nickname ?? _nickname,
  avatar: avatar ?? _avatar,
  userExtend: userExtend ?? _userExtend,
);
  num? get id => _id;
  String? get nickname => _nickname;
  String? get avatar => _avatar;
  UserExtend? get userExtend => _userExtend;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['nickname'] = _nickname;
    map['avatar'] = _avatar;
    if (_userExtend != null) {
      map['userExtend'] = _userExtend?.toJson();
    }
    return map;
  }

}

class UserExtend {
  UserExtend({
      num? userId, 
      String? signature,}){
    _userId = userId;
    _signature = signature;
}

  UserExtend.fromJson(dynamic json) {
    _userId = json['userId'];
    _signature = json['signature'];
  }
  num? _userId;
  String? _signature;
UserExtend copyWith({  num? userId,
  String? signature,
}) => UserExtend(  userId: userId ?? _userId,
  signature: signature ?? _signature,
);
  num? get userId => _userId;
  String? get signature => _signature;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = _userId;
    map['signature'] = _signature;
    return map;
  }

}