// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostDetailResponse _$PostDetailResponseFromJson(Map<String, dynamic> json) =>
    PostDetailResponse(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostDetailResponseToJson(PostDetailResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt() ?? 0,
      userId: (json['userId'] as num?)?.toInt() ?? 0,
      type: (json['type'] as num?)?.toInt() ?? 0,
      postType: (json['postType'] as num?)?.toInt() ?? 0,
      content: json['content'] as String? ?? '',
      hotNum: (json['hotNum'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 0,
      likeNum: (json['likeNum'] as num?)?.toInt() ?? 0,
      reviewNum: (json['reviewNum'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String? ?? '',
      isLike: json['isLike'] as bool? ?? false,
      users: json['users'] == null
          ? null
          : Users.fromJson(json['users'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>?)
              ?.map((e) => Files.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'postType': instance.postType,
      'content': instance.content,
      'hotNum': instance.hotNum,
      'status': instance.status,
      'likeNum': instance.likeNum,
      'reviewNum': instance.reviewNum,
      'createdAt': instance.createdAt,
      'isLike': instance.isLike,
      'users': instance.users,
      'files': instance.files,
    };

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      id: (json['id'] as num?)?.toInt() ?? 0,
      nickname: json['nickname'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      userExtend: json['userExtend'] == null
          ? null
          : UserExtend.fromJson(json['userExtend'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'avatar': instance.avatar,
      'userExtend': instance.userExtend,
    };

UserExtend _$UserExtendFromJson(Map<String, dynamic> json) => UserExtend(
      userId: (json['userId'] as num?)?.toInt() ?? 0,
      sex: (json['sex'] as num?)?.toInt() ?? 0,
      signature: json['signature'] as String? ?? '',
    );

Map<String, dynamic> _$UserExtendToJson(UserExtend instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'sex': instance.sex,
      'signature': instance.signature,
    };

Files _$FilesFromJson(Map<String, dynamic> json) => Files(
      postId: (json['postId'] as num?)?.toInt() ?? 0,
      url: json['url'] as String? ?? '',
      type: (json['type'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$FilesToJson(Files instance) => <String, dynamic>{
      'postId': instance.postId,
      'url': instance.url,
      'type': instance.type,
    };
