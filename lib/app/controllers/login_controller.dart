import 'package:get/get.dart';

class LoginController extends GetxController {
  var _username = ''.obs;

  get username => _username.value;

  set username(val) => _username.value = val;

  final _password = ''.obs;

  get password => _password.value;

  set password(val) => _password.value = val;

  final _loading = false.obs;

  get loading => _loading.value;

  set loading(val) => _loading.value = val;

  void loginWithEmailPassword() {
    // authenticationRepository.login(username, password);

    loading = true;
    Future.delayed(Duration(milliseconds: 3000), () {
      Get.offAndToNamed('/home');
    });
  }
}
