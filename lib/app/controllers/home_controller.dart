import 'package:flutter_getx_template/app/data/models/items.dart';
import 'package:flutter_getx_template/app/data/providers/home_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<Items> {

  final HomeProvider _homeProvider = Get.find<HomeProvider>();

  final _count = 0.obs;
  get count => _count.value;
  set count(val) => _count.value = val;

  increment() => count++;

  @override
  void onInit() {
    fetchItems();
    super.onInit();
  }

  Future<void> fetchItems() async {
    final Response response = await _homeProvider.getItems();
    if (response.hasError) {
      change(null, status: RxStatus.error(response.statusText));
    } else {
      change(response.body, status: RxStatus.success());
    }
  }
}
