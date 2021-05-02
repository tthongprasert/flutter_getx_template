import 'package:flutter_getx_template/app/data/models/user_model.dart';
import 'package:flutter_getx_template/app/data/providers/authentication_provider.dart';

class AuthenticationRepository {
  AuthenticationProvider _authenticationProvider = AuthenticationProvider();

  Future<UserModel> login(String username, String password) async {
    return await _authenticationProvider.login(username, password);
  }
}
