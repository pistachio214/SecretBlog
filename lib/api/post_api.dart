import 'package:dio/dio.dart%20';
import 'package:talk/api/response_model/dynamic_recommend_post_response.dart';
import 'package:talk/api/response_model/post_detail_response.dart';
import 'package:talk/http/dio_service.dart';
import 'package:talk/lang/dio_method.dart';

class PostApi {
  static final CancelToken _cancelToken = CancelToken();

  /// 推荐页的banner列表
  static Future<DynamicRecommendPostResponse> dynamicListAction(
      int page) async {
    Response response = await DioService().request(
      "/main-dynamic/recommend/post",
      method: DioMethod.get,
      params: {"page": page},
      cancelToken: _cancelToken,
    );

    return DynamicRecommendPostResponse.fromJson(response.data);
  }

  /// 帖子详情
  static Future<PostDetailResponse> dynamicDetailAction(int id) async {
    Response response = await DioService().request(
      "/post/$id",
      method: DioMethod.get,
      cancelToken: _cancelToken,
      loading: true,
    );

    return PostDetailResponse.fromJson(response.data);
  }
}
