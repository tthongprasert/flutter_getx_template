import 'dart:convert';
import 'package:flutter_getx_template/app/data/models/user.dart';

class AuthenticationProvider {
  Future<User> login(String username, String password) async {
    try {
      // final response = await http.get('/login');
      return null;
    } catch (error) {
      print('Error -login');
      print(error.toString());
    }
    return null;
  }
}
