import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Container(
        child: Obx(() => Center(
          child: Text('${homeController.helloText}'),
        )),
      ),
    );
  }
}
