import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0;
  var showAlert = false;

  changeTabIndex(index) {
    tabIndex = index;

    if (tabIndex != 2) {
      update();
    } else {
      alert();
    }
  }

  alert() {
    showAlert = true;
  }
}