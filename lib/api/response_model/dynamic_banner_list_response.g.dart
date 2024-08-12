// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_banner_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DynamicBannerListResponse _$DynamicBannerListResponseFromJson(
        Map<String, dynamic> json) =>
    DynamicBannerListResponse(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DynamicBannerListResponseToJson(
        DynamicBannerListResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      remarks: json['remarks'] as String? ?? '',
      image: json['image'] as String? ?? '',
      arguments: json['arguments'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'remarks': instance.remarks,
      'image': instance.image,
      'arguments': instance.arguments,
      'createdAt': instance.createdAt,
    };
