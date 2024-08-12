import 'package:json_annotation/json_annotation.dart';

part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  @JsonKey(defaultValue: '')
  final String username;
  @JsonKey(defaultValue: '')
  final String password;
  @JsonKey(defaultValue: '')
  final String repassword;

  const RegisterRequest({
    required this.username,
    required this.password,
    required this.repassword,
  });

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}
