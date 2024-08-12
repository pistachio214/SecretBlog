
import 'package:dio/dio.dart%20';
import 'package:talk/api/response_model/DynamicRecommendPostResponse.dart';
import 'package:talk/http/dio_service.dart';
import 'package:talk/lang/dio_method.dart';

class PostApi {
  static final CancelToken _cancelToken = CancelToken();

  /// 推荐页的banner列表
  static Future<DynamicRecommendPostResponse> dynamicBannerListAction() async {
    Response response = await DioService().request(
      "/main-dynamic/recommend/post",
      method: DioMethod.get,
      cancelToken: _cancelToken,
    );

    return DynamicRecommendPostResponse.fromJson(response.data);
  }
}