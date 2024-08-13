// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_mine_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMineResponse _$UserMineResponseFromJson(Map<String, dynamic> json) =>
    UserMineResponse(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserMineResponseToJson(UserMineResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt() ?? 0,
      nickname: json['nickname'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      dynamicNumber: (json['dynamicNumber'] as num?)?.toInt() ?? 0,
      likeNumber: json['likeNumber'] as String? ?? '',
      fansNumber: (json['fansNumber'] as num?)?.toInt() ?? 0,
      userExtend: json['userExtend'] == null
          ? null
          : UserExtend.fromJson(json['userExtend'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'avatar': instance.avatar,
      'dynamicNumber': instance.dynamicNumber,
      'likeNumber': instance.likeNumber,
      'fansNumber': instance.fansNumber,
      'userExtend': instance.userExtend,
    };

UserExtend _$UserExtendFromJson(Map<String, dynamic> json) => UserExtend(
      userId: (json['userId'] as num?)?.toInt() ?? 0,
      sex: (json['sex'] as num?)?.toInt() ?? 0,
      signature: json['signature'] as String? ?? '',
      bgImage: json['bgImage'] as String? ?? '',
      hobby:
          (json['hobby'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
    );

Map<String, dynamic> _$UserExtendToJson(UserExtend instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'sex': instance.sex,
      'signature': instance.signature,
      'bgImage': instance.bgImage,
      'hobby': instance.hobby,
    };
