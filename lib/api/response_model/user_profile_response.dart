import 'package:json_annotation/json_annotation.dart';

part 'user_profile_response.g.dart';

@JsonSerializable()
class UserProfileResponse {
  @JsonKey(defaultValue: 0)
  final int code;
  @JsonKey(defaultValue: '')
  final String message;
  final Data? data;

  const UserProfileResponse({
    required this.code,
    required this.message,
    this.data,
  });

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileResponseToJson(this);

  UserProfileResponse copyWith({
    int? code,
    String? message,
    Data? data,
  }) {
    return UserProfileResponse(
      code: code ?? this.code,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}

@JsonSerializable()
class Data {
  @JsonKey(defaultValue: 0)
  final int currentPage;
  @JsonKey(defaultValue: 0)
  final int perPage;
  @JsonKey(defaultValue: 0)
  final int total;
  @JsonKey(defaultValue: [])
  final List<Items> items;

  const Data({
    required this.currentPage,
    required this.perPage,
    required this.total,
    required this.items,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    int? currentPage,
    int? perPage,
    int? total,
    List<Items>? items,
  }) {
    return Data(
      currentPage: currentPage ?? this.currentPage,
      perPage: perPage ?? this.perPage,
      total: total ?? this.total,
      items: items ?? this.items,
    );
  }
}

@JsonSerializable()
class Items {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String url;
  @JsonKey(defaultValue: 0)
  final int type;
  @JsonKey(defaultValue: '')
  final String createdAt;

  const Items({
    required this.id,
    required this.url,
    required this.type,
    required this.createdAt,
  });

  factory Items.fromJson(Map<String, dynamic> json) =>
      _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);

  Items copyWith({
    int? id,
    String? url,
    int? type,
    String? createdAt,
  }) {
    return Items(
      id: id ?? this.id,
      url: url ?? this.url,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
