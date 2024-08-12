import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as GetX;
import 'package:get_storage/get_storage.dart';
import 'package:talk/api/response_model/normal_response.dart';
import 'package:talk/api/response_model/refresh_token_response.dart';
import 'package:talk/lang/const.dart';
import 'package:talk/lang/http_status.dart';
import 'package:talk/routers/app_routes.dart';
import 'package:talk/utils/loading_util.dart';
import 'package:talk/utils/toast_util.dart';

class DioInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["Content-Type"] = "application/json";

    // 存在token的情况下，添加token
    // options.headers["token"] = "rexx";

    final GetStorage storageBox = GetStorage();
    String? accessToken = storageBox.read("accessToken");
    String? tokenType = storageBox.read("tokenType");

    if (accessToken != null && tokenType != null) {
      options.headers['Authorization'] = "$tokenType $accessToken";
    }

    // 如果需求上又更多的操作,直接在这里处理
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
        {
          // 链接服务器超时
          // 根据业务需求来定制操作，可以是弹出框提示或者其他的什么操作
        }
        break;
      case DioExceptionType.receiveTimeout:
        {
          // 响应超时
        }
        break;
      case DioExceptionType.sendTimeout:
        {
          // 发送超时
        }
        break;
      case DioExceptionType.cancel:
        {
          // 请求取消
        }
        break;
      case DioExceptionType.badResponse:
        {
          // 404/503 错误
        }
        break;
      case DioExceptionType.unknown:
        {
          // 其他错误类型
        }
        break;
      default:
    }

    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    NormalResponse normalResponse = NormalResponse.fromJson(response.data);

    if (normalResponse.code == HttpStatus.success) {
      handler.next(response);
    } else if (normalResponse.code == HttpStatus.invalidToken) {
      invalidToken();
    } else if (normalResponse.code == HttpStatus.expiredToken) {
      expiredToken(response).then((Response? response) {
        if (response != null) {
          handler.next(response);
        } else {
          invalidToken();
        }
      });
    } else {
      ToastUtil.shotToast(
          "${normalResponse.code} ---- ${normalResponse.message}");
      LoadingUtil.dismiss();
    }
  }

  /// jwt 过期处理
  Future<Response?> expiredToken(Response response) async {
    LoadingUtil.dismiss();

    final GetStorage storageBox = GetStorage();
    String? refreshToken = storageBox.read("refreshToken");
    String? tokenType = storageBox.read("tokenType");
    var headers = {'Authorization': "$tokenType $refreshToken"};

    Dio dio = Dio();
    String url = "${Const.baseUrl}/refresh-token";

    var response = await dio.post(url, options: Options(headers: headers));

    RefreshTokenResponse responseTemp =
        RefreshTokenResponse.fromJson(response.data);

    if (responseTemp.code == HttpStatus.success) {
      storageBox.write("accessToken", responseTemp.data?.accessToken);
      storageBox.write("refreshToken", responseTemp.data?.refreshToken);

      RequestOptions newOptions = response.requestOptions.copyWith();

      var newHeaders = {
        'Authorization': "$tokenType ${responseTemp.data?.accessToken}"
      };

      var newResponse = await Dio().request(
        newOptions.path,
        options: Options(headers: newHeaders),
        data: newOptions.data,
        queryParameters: newOptions.queryParameters,
      );

      return newResponse;
    } else {
      return null;
    }
  }

  /// jwt 无效处理
  void invalidToken() {
    ToastUtil.shotToast("登录信息无效,请重新登录");
    LoadingUtil.dismiss();

    //缓存实例化
    final GetStorage storageBox = GetStorage();
    storageBox.remove("tokenType");
    storageBox.remove("accessToken");
    storageBox.remove("refreshToken");

    GetX.Get.offAllNamed(AppRoutes.login);
  }
}
