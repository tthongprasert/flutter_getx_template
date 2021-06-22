import 'package:flutter_getx_template/app/core/base/models/user.dart';
import 'package:flutter_getx_template/app/core/init/network/api_base_helper.dart';

class AuthenticationRepository {
  ApiBaseHelper api = ApiBaseHelper();

  Future<User?> login(String username, String password) async {
    try {
      // final response = await api.get('/login');
      return null;
    } catch (error) {
      print('Error -login');
      print(error.toString());
    }
    return null;
  }
}
