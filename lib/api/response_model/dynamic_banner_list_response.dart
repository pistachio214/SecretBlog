import 'package:json_annotation/json_annotation.dart';

part 'dynamic_banner_list_response.g.dart';

@JsonSerializable()
class DynamicBannerListResponse {
  @JsonKey(defaultValue: 0)
  final int code;
  @JsonKey(defaultValue: '')
  final String message;
  @JsonKey(defaultValue: [])
  final List<Data> data;

  const DynamicBannerListResponse({
    required this.code,
    required this.message,
    required this.data,
  });

  factory DynamicBannerListResponse.fromJson(Map<String, dynamic> json) =>
      _$DynamicBannerListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DynamicBannerListResponseToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String title;
  @JsonKey(defaultValue: '')
  final String remarks;
  @JsonKey(defaultValue: '')
  final String image;
  @JsonKey(defaultValue: '')
  final String arguments;
  @JsonKey(defaultValue: '')
  final String createdAt;

  const Data({
    required this.id,
    required this.title,
    required this.remarks,
    required this.image,
    required this.arguments,
    required this.createdAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
