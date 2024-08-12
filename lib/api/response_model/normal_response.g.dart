// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'normal_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NormalResponse _$NormalResponseFromJson(Map<String, dynamic> json) =>
    NormalResponse(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      data: json['data'],
    );

Map<String, dynamic> _$NormalResponseToJson(NormalResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
