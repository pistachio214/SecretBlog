// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dynamic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDynamicResponse _$UserDynamicResponseFromJson(Map<String, dynamic> json) =>
    UserDynamicResponse(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDynamicResponseToJson(
        UserDynamicResponse instance) =>
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
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      postType: (json['postType'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] as String? ?? '',
      files: (json['files'] as List<dynamic>?)
              ?.map((e) => Files.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'postType': instance.postType,
      'createdAt': instance.createdAt,
      'files': instance.files,
    };

Files _$FilesFromJson(Map<String, dynamic> json) => Files(
      postId: (json['postId'] as num?)?.toInt() ?? 0,
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$FilesToJson(Files instance) => <String, dynamic>{
      'postId': instance.postId,
      'url': instance.url,
    };
