import 'package:flutter_getx_template/app/features/dashboard/controllers/dashboard_controller.dart';
import 'package:flutter_getx_template/app/features/home/controllers/home_controller.dart';
import 'package:flutter_getx_template/app/providers/home_provider.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<HomeProvider>(() => HomeProvider());
  }
}
