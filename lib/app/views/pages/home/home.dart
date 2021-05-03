import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/controllers/home_controller.dart';
import 'package:flutter_getx_template/app/data/models/items.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  final HomeController homeController = Get.find<HomeController>();

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Alert Dialog"),
            content: Text("Dialog Content"),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home Page')),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Obx(() => Text('${homeController.count}')),
                onPressed: () {
                  _showDialog(context);
                  // homeController.increment();
                },
              ),
            ),
            Container(
              height: 500,
              child: controller.obx(
                (state) => ListView.builder(
                  itemCount: state.Countries.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(state.Countries[index]['Country']),
                    trailing: Icon(Icons.add),
                  ),
                ),
                onLoading: Center(
                  child: CircularProgressIndicator(),
                ),
                onEmpty: Center(
                  child: Text('No data found'),
                ),
                onError: (error) => Center(
                  child: Text('Try Again!'),
                ),
              ),
            ),
          ],
        ));
  }
}
