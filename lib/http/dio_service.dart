import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:talk/lang/const.dart';
import 'package:talk/lang/dio_method.dart';
import 'package:talk/utils/loading_util.dart';

import 'interceptor/dio_interceptors.dart';


class DioService {
  /// 设置链接超时时间
  static const int connectTimeout = 6 * 1000;

  /// 响应超时时间
  static const int receiveTimeout = 6 * 1000;

  /// 请求的URL前缀
  static String baseUrl = Const.baseUrl;

  static DioService? _instance;

  static Dio _dio = Dio();

  DioService._internal() {
    _instance = this;
    _instance!._init();
  }

  factory DioService() => _instance ?? DioService._internal();

  static DioService? getInstance() {
    _instance ?? DioService._internal();
    return _instance;
  }

  /// 取消请求token
  final CancelToken _cancelToken = CancelToken();

  /// 初始化
  _init() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(milliseconds: connectTimeout),
      receiveTimeout: const Duration(milliseconds: receiveTimeout),
    );

    // 初始化dio
    _dio = Dio(options);

    // 添加拦截器
    _dio.interceptors.add(DioInterceptors());
  }

  /// 设置Http代理(设置即开启)
  void setProxy({String? proxyAddress, bool enable = false}) {
    if (enable) {
      (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient =
          (HttpClient client) {
        client.findProxy = (uri) {
          return proxyAddress ?? "";
        };
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;

        return client;
      } as CreateHttpClient?;
    }
  }

  // /// 设置https证书校验
  void setHttpsCertificateVerification({String? pem, bool enable = false}) {
    if (enable) {
      (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) {
          if (cert.pem == pem) {
            // 验证证书
            return true;
          }
          return false;
        };
      } as CreateHttpClient?;
    }
  }

  /// 开启日志打印
  void openLog() {
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  /// 请求类
  Future<Response> request<T>(
    String path, {
    String method = DioMethod.get,
    Map<String, dynamic>? params,
    data,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const methodValues = {
      DioMethod.get: 'get',
      DioMethod.post: 'post',
      DioMethod.put: 'put',
      DioMethod.delete: 'delete',
      DioMethod.patch: 'patch',
      DioMethod.head: 'head'
    };

    options ??= Options(method: methodValues[method]);
    try {
      LoadingUtil.show(message: "loading...");

      Response response;
      response = await _dio.request(
        path,
        data: data,
        queryParameters: params,
        cancelToken: cancelToken ?? _cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return response;
    } on DioException catch (_) {
      LoadingUtil.dismiss();
      rethrow;
    } finally {
      LoadingUtil.dismiss();
    }
  }

  /// 取消网络请求
  void cancelRequests({CancelToken? token}) {
    token ?? _cancelToken.cancel("cancelled");
  }
}
