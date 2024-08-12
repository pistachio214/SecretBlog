import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_response.g.dart';

@JsonSerializable()
class RefreshTokenResponse {
  @JsonKey(defaultValue: 0)
  final int code;
  @JsonKey(defaultValue: '')
  final String message;
  final Data? data;

  const RefreshTokenResponse({
    required this.code,
    required this.message,
    this.data,
  });

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenResponseToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(defaultValue: '')
  final String accessToken;
  @JsonKey(defaultValue: '')
  final String refreshToken;

  const Data({
    required this.accessToken,
    required this.refreshToken,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
