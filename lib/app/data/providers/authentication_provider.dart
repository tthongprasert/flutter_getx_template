import 'dart:convert';
import 'package:flutter_getx_template/app/data/models/user_model.dart';
import 'package:flutter_getx_template/app/networking/networking.dart';
import 'package:meta/meta.dart';

class AuthenticationProvider {
  final ApiBaseHelper http;

  AuthenticationProvider({@required this.http});

  Future<UserModel> login(String username, String password) async {
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
