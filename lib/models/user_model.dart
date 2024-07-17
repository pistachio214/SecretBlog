class UserModel {
  final String? bgImage;
  final String? avatar;
  final String? name;
  final int? age;

  // 0 女 1男
  final int? sex;
  final String? slign;
  final int? dynamic;
  final int? lovenumber;
  final int? footprint;
  final int? fans;
  final List<String>? imagelist;
  final List<String>? taglist;

  const UserModel({
    this.bgImage,
    this.avatar,
    this.name,
    this.age,
    this.sex,
    this.slign,
    this.dynamic,
    this.lovenumber,
    this.footprint,
    this.fans,
    this.imagelist,
    this.taglist,
  });
}
