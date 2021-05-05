import 'package:flutter_getx_template/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:flutter_getx_template/app/modules/dashboard/views/dashboard_view.dart';
import 'package:flutter_getx_template/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_getx_template/app/modules/home/views/home_view.dart';
import 'package:flutter_getx_template/app/modules/login/bindings/login_binding.dart';
import 'package:flutter_getx_template/app/modules/login/views/login.dart';
import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: AppRoutes.DASHBOARD, page: () => DashboardView(), binding: DashboardBinding()),
    GetPage(name: AppRoutes.HOME, page: () => HomeView(), binding: HomeBinding()),
  ];
}
