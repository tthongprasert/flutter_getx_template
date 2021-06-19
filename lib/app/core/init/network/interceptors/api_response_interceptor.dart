import 'package:dio/dio.dart';
import 'package:flutter_getx_template/app/core/init/network/error_handlers/error_handlers.dart';

class ApiResponseInterceptor  {
  static dynamic responseInterceptor(Response response) {
    switch (response.statusCode) {
      case 200:
        return response.data;
      default:
        return FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

  static dynamic errorInterceptor(Dio dio, DioError error) {
    final Response? response = error.response;
    if (response == null) {
      return FetchDataException(
          'Error occured while Communication with Server');
    }

    switch (response.statusCode) {
      case 400:
        return BadRequestException(error.message);
      case 401:
        return UnauthorisedException(error.message);
      case 403:
        return ApiRefreshTokenHandler.refreshTokenInterceptor(dio, error);
      case 500:
      default:
        return FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
