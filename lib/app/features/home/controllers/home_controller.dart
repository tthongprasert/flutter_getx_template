import 'package:flutter_getx_template/app/core/base/models/items.dart';
import 'package:flutter_getx_template/app/data/repositories/home_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<Items> {
  final HomeRepository _homeProvider = Get.find<HomeRepository>();

  final _count = 0.obs;

  get count => _count.value;

  set count(val) => _count.value = val;

  @override
  void onInit() {
    Future.delayed(Duration(milliseconds: 3000), () {
      fetchItems();
    });

    super.onInit();
  }

  increment() => count++;

  Future<void> fetchItems() async {
    final Response response = await _homeProvider.getItems();
    if (response.hasError) {
      change(null, status: RxStatus.error('No data. Please try again.'));
    } else {
      change(response.body, status: RxStatus.success());
    }
  }
}
