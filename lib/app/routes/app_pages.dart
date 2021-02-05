import 'package:flutter_getx_sample/app/bindings/detail_binding.dart';
import 'package:flutter_getx_sample/app/ui/android/home/home_page.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => HomePage()),
    // GetPage(name: Routes.DETAILS, page: DetailPage(), binding: DetailBinding())
  ];
}
