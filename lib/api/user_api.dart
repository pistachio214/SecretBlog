import 'package:dio/dio.dart';
import 'package:talk/api/response_model/user_dynamic_response.dart';
import 'package:talk/api/response_model/user_mine_response.dart';
import 'package:talk/api/response_model/user_profile_response.dart';
import 'package:talk/http/dio_service.dart';
import 'package:talk/lang/dio_method.dart';

class UserApi {
  static final CancelToken _cancelToken = CancelToken();

  /// 获取指定用户的信息
  static Future<UserMineResponse> minieAction(int id) async {
    Response response = await DioService().request(
      "/user/mine/$id",
      method: DioMethod.get,
      cancelToken: _cancelToken,
    );

    return UserMineResponse.fromJson(response.data);
  }

  /// 获取指定用户的资料
  static Future<UserProfileResponse> profileAction(int id) async {
    Response response = await DioService().request(
      "/user/profile/$id",
      method: DioMethod.get,
      cancelToken: _cancelToken,
    );

    return UserProfileResponse.fromJson(response.data);
  }

  /// 获取指定用户的资料
  static Future<UserDynamicResponse> dynamicAction(int id) async {
    Response response = await DioService().request(
      "/user/dynamic/$id",
      method: DioMethod.get,
      cancelToken: _cancelToken,
    );

    return UserDynamicResponse.fromJson(response.data);
  }
}
