import 'package:json_annotation/json_annotation.dart';

part 'dynamic_recommend_post_response.g.dart';

@JsonSerializable()
class DynamicRecommendPostResponse {
  @JsonKey(defaultValue: 0)
  final int code;
  @JsonKey(defaultValue: '')
  final String message;
  final Data? data;

  const DynamicRecommendPostResponse({
    required this.code,
    required this.message,
    this.data,
  });

  factory DynamicRecommendPostResponse.fromJson(Map<String, dynamic> json) =>
      _$DynamicRecommendPostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DynamicRecommendPostResponseToJson(this);

  DynamicRecommendPostResponse copyWith({
    int? code,
    String? message,
    Data? data,
  }) {
    return DynamicRecommendPostResponse(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}

@JsonSerializable()
class Data {
  @JsonKey(defaultValue: 0)
  final int currentPage;
  @JsonKey(defaultValue: 0)
  final int perPage;
  @JsonKey(defaultValue: 0)
  final int total;
  @JsonKey(defaultValue: [])
  final List<Items> items;

  const Data({
    required this.currentPage,
    required this.perPage,
    required this.total,
    required this.items,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    int? currentPage,
    int? perPage,
    int? total,
    List<Items>? items,
  }) {
    return Data(
      currentPage: currentPage ?? this.currentPage,
      perPage: perPage ?? this.perPage,
      total: total ?? this.total,
      items: items ?? this.items,
    );
  }
}

@JsonSerializable()
class Items {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: 0)
  final int userId;
  @JsonKey(defaultValue: '')
  final String title;
  @JsonKey(defaultValue: 0)
  final int type;
  @JsonKey(defaultValue: 0)
  final int postType;
  @JsonKey(defaultValue: '')
  final String content;
  @JsonKey(defaultValue: 0)
  final int hotNum;
  @JsonKey(defaultValue: 0)
  final int status;
  @JsonKey(defaultValue: 0)
  final int likeNum;
  @JsonKey(defaultValue: 0)
  final int reviewNum;
  @JsonKey(defaultValue: '')
  final String createdAt;
  final Users? users;
  @JsonKey(defaultValue: [])
  final List<Files> files;
  @JsonKey(defaultValue: [])
  final List<Tags> tags;

  const Items({
    required this.id,
    required this.userId,
    required this.title,
    required this.type,
    required this.postType,
    required this.content,
    required this.hotNum,
    required this.status,
    required this.likeNum,
    required this.reviewNum,
    required this.createdAt,
    this.users,
    required this.files,
    required this.tags,
  });

  factory Items.fromJson(Map<String, dynamic> json) =>
      _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);

  Items copyWith({
    int? id,
    int? userId,
    String? title,
    int? type,
    int? postType,
    String? content,
    int? hotNum,
    int? status,
    int? likeNum,
    int? reviewNum,
    String? createdAt,
    Users? users,
    List<Files>? files,
    List<Tags>? tags,
  }) {
    return Items(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      type: type ?? this.type,
      postType: postType ?? this.postType,
      content: content ?? this.content,
      hotNum: hotNum ?? this.hotNum,
      status: status ?? this.status,
      likeNum: likeNum ?? this.likeNum,
      reviewNum: reviewNum ?? this.reviewNum,
      createdAt: createdAt ?? this.createdAt,
      users: users ?? this.users,
      files: files ?? this.files,
      tags: tags ?? this.tags,
    );
  }
}

@JsonSerializable()
class Users {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String nickname;
  @JsonKey(defaultValue: '')
  final String avatar;
  final UserExtend? userExtend;

  const Users({
    required this.id,
    required this.nickname,
    required this.avatar,
    this.userExtend,
  });

  factory Users.fromJson(Map<String, dynamic> json) =>
      _$UsersFromJson(json);

  Map<String, dynamic> toJson() => _$UsersToJson(this);

  Users copyWith({
    int? id,
    String? nickname,
    String? avatar,
    UserExtend? userExtend,
  }) {
    return Users(
      id: id ?? this.id,
      nickname: nickname ?? this.nickname,
      avatar: avatar ?? this.avatar,
      userExtend: userExtend ?? this.userExtend,
    );
  }
}

@JsonSerializable()
class UserExtend {
  @JsonKey(defaultValue: 0)
  final int userId;
  @JsonKey(defaultValue: '')
  final String signature;

  const UserExtend({
    required this.userId,
    required this.signature,
  });

  factory UserExtend.fromJson(Map<String, dynamic> json) =>
      _$UserExtendFromJson(json);

  Map<String, dynamic> toJson() => _$UserExtendToJson(this);

  UserExtend copyWith({
    int? userId,
    String? signature,
  }) {
    return UserExtend(
      userId: userId ?? this.userId,
      signature: signature ?? this.signature,
    );
  }
}

@JsonSerializable()
class Files {
  @JsonKey(defaultValue: 0)
  final int postId;
  @JsonKey(defaultValue: '')
  final String url;

  const Files({
    required this.postId,
    required this.url,
  });

  factory Files.fromJson(Map<String, dynamic> json) =>
      _$FilesFromJson(json);

  Map<String, dynamic> toJson() => _$FilesToJson(this);

  Files copyWith({
    int? postId,
    String? url,
  }) {
    return Files(
      postId: postId ?? this.postId,
      url: url ?? this.url,
    );
  }
}

@JsonSerializable()
class Tags {
  @JsonKey(defaultValue: '')
  final String name;
  final Pivot? pivot;

  const Tags({
    required this.name,
    this.pivot,
  });

  factory Tags.fromJson(Map<String, dynamic> json) =>
      _$TagsFromJson(json);

  Map<String, dynamic> toJson() => _$TagsToJson(this);

  Tags copyWith({
    String? name,
    Pivot? pivot,
  }) {
    return Tags(
      name: name ?? this.name,
      pivot: pivot ?? this.pivot,
    );
  }
}

@JsonSerializable()
class Pivot {
  @JsonKey(defaultValue: 0)
  final int postId;
  @JsonKey(defaultValue: 0)
  final int hashtagsId;

  const Pivot({
    required this.postId,
    required this.hashtagsId,
  });

  factory Pivot.fromJson(Map<String, dynamic> json) =>
      _$PivotFromJson(json);

  Map<String, dynamic> toJson() => _$PivotToJson(this);

  Pivot copyWith({
    int? postId,
    int? hashtagsId,
  }) {
    return Pivot(
      postId: postId ?? this.postId,
      hashtagsId: hashtagsId ?? this.hashtagsId,
    );
  }
}
