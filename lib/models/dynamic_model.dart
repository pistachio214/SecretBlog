import 'package:talk/models/avatar_list.dart';

import 'package:talk/models/user_model.dart';

class DynamicModel {
  final UserModel userInfo;
  final String content;
  final List<String> image;
  final String tag;
  final List<AvatarList>? avatars;

  DynamicModel({
    required this.userInfo,
    required this.content,
    required this.image,
    required this.tag,
    this.avatars,
  });
}
