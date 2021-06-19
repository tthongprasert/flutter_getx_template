import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiRequestInterceptor {
  static dynamic requestInterceptor(RequestOptions options) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    final token = await _preferences.getString('headerToken');
    options.headers.addAll({"Authorization": "Bearer $token"});
    return options;
  }
}
