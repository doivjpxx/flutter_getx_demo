import 'package:flutter_getx_sample/app/controller/details/detail_controller.dart';
import 'package:flutter_getx_sample/app/data/provider/api.dart';
import 'package:flutter_getx_sample/app/data/repository/post_repository.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(() => DetailController(
        myRepository:
            MyRepository(apiClient: MyApiClient(client: http.Client()))));
  }
}
