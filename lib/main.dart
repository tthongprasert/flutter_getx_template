import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/init/navigation/app_pages.dart';
import 'package:flutter_getx_template/app/core/theme/app_theme.dart';
import 'package:flutter_getx_template/app/core/translations/app_translations.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    locale: Locale('en', 'US'),
    translationsKeys: AppTranslation.translations,
    initialRoute: AppRoutes.LOGIN,
  ));
}
