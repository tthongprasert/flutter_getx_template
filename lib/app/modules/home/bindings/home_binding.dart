import 'package:flutter_getx_template/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_getx_template/app/data/providers/home_provider.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeProvider>(() => HomeProvider());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}