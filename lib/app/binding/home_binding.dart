import 'package:flutter_getx_template/app/controllers/home_controller.dart';
import 'package:flutter_getx_template/app/data/providers/home_provider.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeProvider());
    Get.put(HomeController());
  }

}