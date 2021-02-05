import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/app/bindings/home_binding.dart';
import 'package:flutter_getx_sample/app/i18n/app_translations.dart';
import 'package:flutter_getx_sample/app/routes/app_pages.dart';
import 'package:flutter_getx_sample/app/routes/app_routes.dart';
import 'package:flutter_getx_sample/app/ui/android/home/home_page.dart';
import 'package:flutter_getx_sample/app/ui/theme/my_theme.dart';
import 'package:flutter_getx_sample/my_controller_counter.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.INITIAL,
      initialBinding: HomeBinding(),
      theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
      home: HomePage(),
      locale: Locale('en', 'US'),
      translationsKeys: AppTranslation.translations,
    );
  }
}
