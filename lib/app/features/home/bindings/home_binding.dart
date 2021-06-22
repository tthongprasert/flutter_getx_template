import 'package:flutter_getx_template/app/data/repositories/home_repository.dart';
import 'package:flutter_getx_template/app/features/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeRepository>(() => HomeRepository());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
