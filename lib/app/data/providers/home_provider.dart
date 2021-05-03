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

    // Sample configuration

    // // It's will attach 'apikey' property on header from all requests
    // httpClient.addRequestModifier((request) {
    //   request.headers['apikey'] = '12345678';
    //   return request;
    // });
    //
    // // Even if the server sends data from the country "Brazil",
    // // it will never be displayed to users, because you remove
    // // that data from the response, even before the response is delivered
    // httpClient.addResponseModifier<Items>((request, response) {
    //   Items model = response.body;
    //   // TO DO...
    // });
    //
    // httpClient.addAuthenticator((request) async {
    //   final response = await get("http://yourapi/token");
    //   final token = response.body['token'];
    //   // Set the header
    //   request.headers['Authorization'] = "$token";
    //   return request;
    // });

    //Autenticator will be called 3 times if HttpStatus is
    //HttpStatus.unauthorized
    // httpClient.maxAuthRetries = 3;
  }

  Future<Response<Items>> getItems() async => await get(ApiPath.GET_ALL_ITEMS);

  // Sample methods
  // Future<Response> addItems(Map data) async => await post(ApiPath.ADD_ITEM, body: data);
  //
  // Future<Response<Items>> addItemsWithImage(List<int> image) {
  //   final form = FormData({
  //     'file': MultipartFile(image, filename: 'avatar.png'),
  //     'otherFile': MultipartFile(image, filename: 'cover.png'),
  //   });
  //   return post('http://youapi/users/upload', form);
  // }
  //
  // GetSocket userMessages() {
  //   return socket('https://yourapi/users/socket');
  // }
}
