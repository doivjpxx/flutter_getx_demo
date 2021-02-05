import 'package:flutter_getx_sample/app/controller/home/home_controller.dart';
import 'package:flutter_getx_sample/app/data/provider/api.dart';
import 'package:flutter_getx_sample/app/data/repository/post_repository.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(
        repository:
            MyRepository(apiClient: MyApiClient(client: http.Client()))));
  }
}
