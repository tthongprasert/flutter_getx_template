import 'package:flutter_getx_template/app/core/base/models/items.dart';
import 'package:flutter_getx_template/app/core/init/network/networking.dart';
import 'package:get/get.dart';

class HomeRepository extends GetConnect {
  ApiBaseHelper api = ApiBaseHelper();

  Future<Response<Items>> getItems() async {
    try {
      // final response = await api.get('ApiPath');
      // SampleResponse sampleResponse =
      // SampleResponse.fromJson(response?.data);
      // return sampleResponse.dataList;
      return Response();
    } catch (error) {
      throw error;
    }
  }
}
