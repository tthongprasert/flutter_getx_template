import 'package:flutter_getx_template/app/features/dashboard/bindings/dashboard_binding.dart';
import 'package:flutter_getx_template/app/features/dashboard/views/dashboard_view.dart';
import 'package:flutter_getx_template/app/features/home/bindings/home_binding.dart';
import 'package:flutter_getx_template/app/features/home/views/home_view.dart';
import 'package:flutter_getx_template/app/features/login/bindings/login_binding.dart';
import 'package:flutter_getx_template/app/features/login/views/login_view.dart';
import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.LOGIN, page: () => LoginView(), binding: LoginBinding()),
    GetPage(name: AppRoutes.DASHBOARD, page: () => DashboardView(), binding: DashboardBinding()),
    GetPage(name: AppRoutes.HOME, page: () => HomeView(), binding: HomeBinding()),
  ];
}
