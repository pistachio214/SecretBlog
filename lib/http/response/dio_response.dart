class DioResponse<T> {
  final String? message;

  final int? code;

  final T? data;

  DioResponse({this.message, this.data, this.code});

  @override
  String toString() {
    return 'DioResponse{message: $message, code: $code, data: $data}';
  }
}

class DioResponseCode {
  static const int success = 200;

  static const int error = 500;
}
