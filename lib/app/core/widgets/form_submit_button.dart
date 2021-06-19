import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormSubmitButton extends StatelessWidget {
  final GlobalKey formKey;
  final Function() onPress;

  const FormSubmitButton({
    Key? key,
    required this.formKey,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).primaryColor, // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: onPress,
          child: const Text('Login'),
        ),
      ),
    );
  }
}
