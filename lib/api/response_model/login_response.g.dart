// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      tokenType: json['tokenType'] as String? ?? '',
      expiresIn: (json['expiresIn'] as num?)?.toInt() ?? 0,
      accessToken: json['accessToken'] as String? ?? '',
      refreshToken: json['refreshToken'] as String? ?? '',
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'tokenType': instance.tokenType,
      'expiresIn': instance.expiresIn,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
