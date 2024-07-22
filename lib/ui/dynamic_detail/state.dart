import 'package:get/get.dart';

class DynamicDetailState {
  late RxList<String> images;

  DynamicDetailState() {
    images = [
      'https://img2.woyaogexing.com/2020/02/24/7d8680e03a3d46d1a84182dce9a77a33!400x400.jpeg',
      'https://img2.woyaogexing.com/2020/02/24/7d8680e03a3d46d1a84182dce9a77a33!400x400.jpeg',
      'https://img2.woyaogexing.com/2020/02/24/7d8680e03a3d46d1a84182dce9a77a33!400x400.jpeg',
    ].obs;
  }
}
