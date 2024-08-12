import 'package:dio/dio.dart';
import 'package:talk/api/request_model/login_request.dart';
import 'package:talk/api/request_model/register_request.dart';
import 'package:talk/api/response_model/login_response.dart';
import 'package:talk/api/response_model/normal_response.dart';
import 'package:talk/http/dio_service.dart';
import 'package:talk/lang/dio_method.dart';

class AuthApi {
  static final CancelToken _cancelToken = CancelToken();

  /// 退出
  static Future<NormalResponse> logoutAction() async {
    Response response = await DioService().request(
      "/logout",
      method: DioMethod.delete,
      cancelToken: _cancelToken,
    );

    return NormalResponse.fromJson(response.data);
  }

  /// 注册
  static Future<NormalResponse> registerAction(RegisterRequest request) async {
    Response response = await DioService().request(
      "/register",
      method: DioMethod.post,
      cancelToken: _cancelToken,
      data: request.toJson(),
    );

    return NormalResponse.fromJson(response.data);
  }

  /// 登录
  static Future<LoginResponse> loginAction(LoginRequest request) async {
    Response response = await DioService().request(
      "/login",
      method: DioMethod.post,
      cancelToken: _cancelToken,
      data: request.toJson(),
    );

    return LoginResponse.fromJson(response.data);
  }
}
