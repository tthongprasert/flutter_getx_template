import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:flutter_getx_template/app/modules/home/views/home_view.dart';
import 'package:flutter_getx_template/app/modules/profile/views/profile_view.dart';
import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomeView(),
              ProfileView(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Theme.of(context).accentColor,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          items: [
            _bottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            _bottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
            _bottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Logout',
            ),
          ],
        ),
      );
    });
  }

  _bottomNavigationBarItem({Icon icon, String label}) {
    return BottomNavigationBarItem(icon: icon, label: label);
  }
}
