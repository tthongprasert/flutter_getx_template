import 'package:flutter_getx_template/app/binding/home_binding.dart';
import 'package:flutter_getx_template/app/binding/login_binding.dart';
import 'package:flutter_getx_template/app/views/pages/home/home.dart';
import 'package:flutter_getx_template/app/views/pages/login/login.dart';
import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: AppRoutes.HOME, page: () => HomePage(), binding: HomeBinding()),
  ];
}
