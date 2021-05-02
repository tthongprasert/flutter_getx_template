import 'package:flutter_getx_template/app/core/configs/api_config.dart';
import 'package:flutter_getx_template/app/core/values/api_path.dart';
import 'package:flutter_getx_template/app/data/models/items.dart';
import 'package:get/get.dart';

class HomeProvider extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    httpClient.defaultDecoder =
        (val) => Items.fromJson(val as Map<String, dynamic>);
    httpClient.baseUrl = ApiConfig.BASE_URL;
  }

  Future<Response<Items>> getItems() async => await get(ApiPath.GET_ALL_ITEMS);
}
