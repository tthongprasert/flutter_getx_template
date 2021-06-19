
import 'package:dio/dio.dart';
import 'package:flutter_getx_template/app/core/init/network/interceptors/interceptors.dart';

class ApiConfig {
  static const BASE_URL = '';

  static BaseOptions opts = BaseOptions(
    baseUrl: BASE_URL,
    responseType: ResponseType.json,
    connectTimeout: 30000,
    receiveTimeout: 30000,
  );

  static Dio addInterceptors(Dio dio) {
    return dio
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options,
              RequestInterceptorHandler requestInterceptorHandler,) async {
            await ApiRequestInterceptor.requestInterceptor(options);
            return requestInterceptorHandler.next(options);
          },
          onResponse: (response, handler) async {
            await ApiResponseInterceptor.responseInterceptor(response);
            return handler.next(response);
          },
          onError: (DioError e,
              ErrorInterceptorHandler errorInterceptorHandler) async {
            ApiResponseInterceptor.errorInterceptor(dio, e);
            return errorInterceptorHandler.next(e);
          },
        ),
      );
  }
}
