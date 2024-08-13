import 'package:json_annotation/json_annotation.dart';

part 'post_detail_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class PostDetailResponse {
  @JsonKey(defaultValue: 0)
  final int code;
  @JsonKey(defaultValue: '')
  final String message;
  final Data? data;

  const PostDetailResponse({
    required this.code,
    required this.message,
    this.data,
  });

  factory PostDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$PostDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostDetailResponseToJson(this);

  PostDetailResponse copyWith({
    int? code,
    String? message,
    Data? data,
  }) {
    return PostDetailResponse(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Data {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: 0)
  final int userId;
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
  @JsonKey(defaultValue: false)
  final bool isLike;
  final Users? users;
  @JsonKey(defaultValue: [])
  final List<Files> files;

  const Data({
    required this.id,
    required this.userId,
    required this.type,
    required this.postType,
    required this.content,
    required this.hotNum,
    required this.status,
    required this.likeNum,
    required this.reviewNum,
    required this.createdAt,
    required this.isLike,
    this.users,
    required this.files,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    int? id,
    int? userId,
    int? type,
    int? postType,
    String? content,
    int? hotNum,
    int? status,
    int? likeNum,
    int? reviewNum,
    String? createdAt,
    bool? isLike,
    Users? users,
    List<Files>? files,
  }) {
    return Data(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      postType: postType ?? this.postType,
      content: content ?? this.content,
      hotNum: hotNum ?? this.hotNum,
      status: status ?? this.status,
      likeNum: likeNum ?? this.likeNum,
      reviewNum: reviewNum ?? this.reviewNum,
      createdAt: createdAt ?? this.createdAt,
      isLike: isLike ?? this.isLike,
      users: users ?? this.users,
      files: files ?? this.files,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
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

@JsonSerializable(fieldRename: FieldRename.none)
class UserExtend {
  @JsonKey(defaultValue: 0)
  final int userId;
  @JsonKey(defaultValue: 0)
  final int sex;
  @JsonKey(defaultValue: '')
  final String signature;

  const UserExtend({
    required this.userId,
    required this.sex,
    required this.signature,
  });

  factory UserExtend.fromJson(Map<String, dynamic> json) =>
      _$UserExtendFromJson(json);

  Map<String, dynamic> toJson() => _$UserExtendToJson(this);

  UserExtend copyWith({
    int? userId,
    int? sex,
    String? signature,
  }) {
    return UserExtend(
      userId: userId ?? this.userId,
      sex: sex ?? this.sex,
      signature: signature ?? this.signature,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.none)
class Files {
  @JsonKey(defaultValue: 0)
  final int postId;
  @JsonKey(defaultValue: '')
  final String url;
  @JsonKey(defaultValue: 0)
  final int type;

  const Files({
    required this.postId,
    required this.url,
    required this.type,
  });

  factory Files.fromJson(Map<String, dynamic> json) =>
      _$FilesFromJson(json);

  Map<String, dynamic> toJson() => _$FilesToJson(this);

  Files copyWith({
    int? postId,
    String? url,
    int? type,
  }) {
    return Files(
      postId: postId ?? this.postId,
      url: url ?? this.url,
      type: type ?? this.type,
    );
  }
}
