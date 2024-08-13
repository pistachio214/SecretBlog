import 'package:json_annotation/json_annotation.dart';

part 'user_mine_response.g.dart';

@JsonSerializable()
class UserMineResponse {
  @JsonKey(defaultValue: 0)
  final int code;
  @JsonKey(defaultValue: '')
  final String message;
  final Data? data;

  const UserMineResponse({
    required this.code,
    required this.message,
    this.data,
  });

  factory UserMineResponse.fromJson(Map<String, dynamic> json) =>
      _$UserMineResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserMineResponseToJson(this);

  UserMineResponse copyWith({
    int? code,
    String? message,
    Data? data,
  }) {
    return UserMineResponse(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}

@JsonSerializable()
class Data {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String nickname;
  @JsonKey(defaultValue: '')
  final String avatar;
  @JsonKey(defaultValue: 0)
  final int dynamicNumber;
  @JsonKey(defaultValue: '')
  final String likeNumber;
  @JsonKey(defaultValue: 0)
  final int fansNumber;
  final UserExtend? userExtend;

  const Data({
    required this.id,
    required this.nickname,
    required this.avatar,
    required this.dynamicNumber,
    required this.likeNumber,
    required this.fansNumber,
    this.userExtend,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    int? id,
    String? nickname,
    String? avatar,
    int? dynamicNumber,
    String? likeNumber,
    int? fansNumber,
    UserExtend? userExtend,
  }) {
    return Data(
      id: id ?? this.id,
      nickname: nickname ?? this.nickname,
      avatar: avatar ?? this.avatar,
      dynamicNumber: dynamicNumber ?? this.dynamicNumber,
      likeNumber: likeNumber ?? this.likeNumber,
      fansNumber: fansNumber ?? this.fansNumber,
      userExtend: userExtend ?? this.userExtend,
    );
  }
}

@JsonSerializable()
class UserExtend {
  @JsonKey(defaultValue: 0)
  final int userId;
  @JsonKey(defaultValue: 0)
  final int sex;
  @JsonKey(defaultValue: '')
  final String signature;
  @JsonKey(defaultValue: '')
  final String bgImage;
  @JsonKey(defaultValue: [])
  final List<String> hobby;

  const UserExtend({
    required this.userId,
    required this.sex,
    required this.signature,
    required this.bgImage,
    required this.hobby,
  });

  factory UserExtend.fromJson(Map<String, dynamic> json) =>
      _$UserExtendFromJson(json);

  Map<String, dynamic> toJson() => _$UserExtendToJson(this);

  UserExtend copyWith({
    int? userId,
    int? sex,
    String? signature,
    String? bgImage,
    List<String>? hobby,
  }) {
    return UserExtend(
      userId: userId ?? this.userId,
      sex: sex ?? this.sex,
      signature: signature ?? this.signature,
      bgImage: bgImage ?? this.bgImage,
      hobby: hobby ?? this.hobby,
    );
  }
}
