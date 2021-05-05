import 'package:flutter_getx_template/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:flutter_getx_template/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_getx_template/app/data/providers/home_provider.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<HomeProvider>(() => HomeProvider());
  }

}