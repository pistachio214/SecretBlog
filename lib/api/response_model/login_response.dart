import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(defaultValue: 0)
  final int code;
  @JsonKey(defaultValue: '')
  final String message;
  final Data? data;

  const LoginResponse({
    required this.code,
    required this.message,
    this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(defaultValue: '')
  final String tokenType;
  @JsonKey(defaultValue: 0)
  final int expiresIn;
  @JsonKey(defaultValue: '')
  final String accessToken;
  @JsonKey(defaultValue: '')
  final String refreshToken;

  const Data({
    required this.tokenType,
    required this.expiresIn,
    required this.accessToken,
    required this.refreshToken,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
