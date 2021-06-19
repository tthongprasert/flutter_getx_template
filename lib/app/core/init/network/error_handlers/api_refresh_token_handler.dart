import 'package:dio/dio.dart';

class ApiRefreshTokenHandler {
  static dynamic refreshTokenInterceptor(Dio dio, DioError error) {
    dio.interceptors.requestLock.lock();
    dio.interceptors.responseLock.lock();
    RequestOptions requestOptions = error.response!.requestOptions;
    final options = new Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );

    // TODO: Refresh token
    final token = '';
    // Update new token
    options.headers!["Authorization"] = "Bearer " + token;

    // .whenComplete()
    dio.interceptors.requestLock.unlock();
    dio.interceptors.responseLock.unlock();
    return dio.request(
      requestOptions.path,
      // data: requestOptions.data,
      options: options,
    );
  }
}
