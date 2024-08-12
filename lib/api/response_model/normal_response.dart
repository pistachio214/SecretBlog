import 'package:json_annotation/json_annotation.dart';

part 'normal_response.g.dart';

@JsonSerializable()
class NormalResponse {
  @JsonKey(defaultValue: 0)
  final int code;
  @JsonKey(defaultValue: '')
  final String message;
  final dynamic data;

  const NormalResponse({
    required this.code,
    required this.message,
    this.data,
  });

  factory NormalResponse.fromJson(Map<String, dynamic> json) =>
      _$NormalResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NormalResponseToJson(this);
}
