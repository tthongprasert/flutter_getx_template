import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/views/global_widgets/form_submit_button.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Text(
                    "APP LOGO HERE",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black54,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your email',
                        ),
                        validator: (String value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your password',
                        ),
                        obscureText: true,
                        validator: (String value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      FormSubmitButton(
                        formKey: _formKey,
                        onPress: () {
                          if (_formKey.currentState.validate()) {
                            Get.offAndToNamed('/home');
                          }
                        },
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
