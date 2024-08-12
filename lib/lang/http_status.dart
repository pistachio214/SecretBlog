class HttpStatus {
  static const int success = 200;
  static const int error = 500;
  static const int forbidden = 403;

  // jwt 无效token
  static const int invalidToken = 401011;
  // jwt 已过期
  static const int expiredToken = 401013;
}
