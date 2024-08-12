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
  final List<Items>? items;

  const Data({
    required this.currentPage,
    required this.perPage,
    required this.total,
    required this.items,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
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
  final List<dynamic> tags;

  const Items({
    required this.id,
    required this.userId,
    required this.title,
    required this.type,
    required this.postType,
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
}
