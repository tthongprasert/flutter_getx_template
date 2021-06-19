import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0;
  var showAlert = false;

  changeTabIndex(index) {
    tabIndex = index;
    update();
  }

  alert() {
    showAlert = true;
  }
}