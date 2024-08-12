
import 'package:dio/dio.dart';
import 'package:talk/api/response_model/dynamic_banner_list_response.dart';
import 'package:talk/http/dio_service.dart';
import 'package:talk/lang/dio_method.dart';

class BannerApi {
  static final CancelToken _cancelToken = CancelToken();

  /// 注册
  static Future<DynamicBannerListResponse> dynamicBannerListAction() async {
    Response response = await DioService().request(
      "/main-dynamic/recommend/banner",
      method: DioMethod.get,
      cancelToken: _cancelToken,
    );

    return DynamicBannerListResponse.fromJson(response.data);
  }
}