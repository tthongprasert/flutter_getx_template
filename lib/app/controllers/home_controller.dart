import 'package:get/get.dart';

class HomeController extends GetxController {

  var helloText = ''.obs;
  set obj(value) => helloText.value = value;
  get obj => helloText.value;
}