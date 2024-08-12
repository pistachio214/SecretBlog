// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_recommend_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DynamicRecommendPostResponse _$DynamicRecommendPostResponseFromJson(
        Map<String, dynamic> json) =>
    DynamicRecommendPostResponse(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DynamicRecommendPostResponseToJson(
        DynamicRecommendPostResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      currentPage: (json['currentPage'] as num?)?.toInt() ?? 0,
      perPage: (json['perPage'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'currentPage': instance.currentPage,
      'perPage': instance.perPage,
      'total': instance.total,
      'items': instance.items,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      id: (json['id'] as num?)?.toInt() ?? 0,
      userId: (json['userId'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      type: (json['type'] as num?)?.toInt() ?? 0,
      postType: (json['postType'] as num?)?.toInt() ?? 0,
      hotNum: (json['hotNum'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? 0,
      likeNum: (json['likeNum'] as num?)?.toInt() ?? 0,
      reviewNum: (json['reviewNum'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String? ?? '',
      users: json['users'] == null
          ? null
          : Users.fromJson(json['users'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>?)
              ?.map((e) => Files.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      tags: json['tags'] as List<dynamic>? ?? [],
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'type': instance.type,
      'postType': instance.postType,
      'hotNum': instance.hotNum,
      'status': instance.status,
      'likeNum': instance.likeNum,
      'reviewNum': instance.reviewNum,
      'createdAt': instance.createdAt,
      'users': instance.users,
      'files': instance.files,
      'tags': instance.tags,
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
      signature: json['signature'] as String? ?? '',
    );

Map<String, dynamic> _$UserExtendToJson(UserExtend instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'signature': instance.signature,
    };

Files _$FilesFromJson(Map<String, dynamic> json) => Files(
      postId: (json['postId'] as num?)?.toInt() ?? 0,
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$FilesToJson(Files instance) => <String, dynamic>{
      'postId': instance.postId,
      'url': instance.url,
    };
