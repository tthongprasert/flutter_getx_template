import 'package:flutter_getx_template/app/features/home/controllers/home_controller.dart';
import 'package:flutter_getx_template/app/providers/home_provider.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeProvider>(() => HomeProvider());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
