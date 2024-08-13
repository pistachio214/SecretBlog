import 'package:json_annotation/json_annotation.dart';

part 'user_dynamic_response.g.dart';

@JsonSerializable()
class UserDynamicResponse {
  @JsonKey(defaultValue: 0)
  final int code;
  @JsonKey(defaultValue: '')
  final String message;
  final Data? data;

  const UserDynamicResponse({
    required this.code,
    required this.message,
    this.data,
  });

  factory UserDynamicResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDynamicResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserDynamicResponseToJson(this);

  UserDynamicResponse copyWith({
    int? code,
    String? message,
    Data? data,
  }) {
    return UserDynamicResponse(
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
  final String title;
  @JsonKey(defaultValue: '')
  final String content;
  @JsonKey(defaultValue: 0)
  final int postType;
  @JsonKey(defaultValue: '')
  final String createdAt;
  @JsonKey(defaultValue: [])
  final List<Files> files;

  const Items({
    required this.id,
    required this.title,
    required this.content,
    required this.postType,
    required this.createdAt,
    required this.files,
  });

  factory Items.fromJson(Map<String, dynamic> json) =>
      _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);

  Items copyWith({
    int? id,
    String? title,
    String? content,
    int? postType,
    String? createdAt,
    List<Files>? files,
  }) {
    return Items(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      postType: postType ?? this.postType,
      createdAt: createdAt ?? this.createdAt,
      files: files ?? this.files,
    );
  }
}

@JsonSerializable()
class Files {
  @JsonKey(defaultValue: 0)
  final int postId;
  @JsonKey(defaultValue: '')
  final String url;

  const Files({
    required this.postId,
    required this.url,
  });

  factory Files.fromJson(Map<String, dynamic> json) =>
      _$FilesFromJson(json);

  Map<String, dynamic> toJson() => _$FilesToJson(this);

  Files copyWith({
    int? postId,
    String? url,
  }) {
    return Files(
      postId: postId ?? this.postId,
      url: url ?? this.url,
    );
  }
}
