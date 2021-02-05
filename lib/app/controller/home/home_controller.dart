import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_sample/app/data/model/model.dart';
import 'package:flutter_getx_sample/app/data/repository/post_repository.dart';
import 'package:flutter_getx_sample/app/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final MyRepository repository;

  HomeController({@required this.repository}) : assert(repository != null);

  final _postsList = <MyModel>[].obs;
  final _post = MyModel().obs;

  get postsList => this._postsList;
  set postsList(value) => this._postsList.assignAll(value);

  get post => this._post.value;
  set post(value) => this._post.value = value;

  getAll() {
    repository.getAll().then((data) => this.postsList = data);
  }

  add(post) {}

  remove(id) {}

  edit() {}

  detail(post) {
    this.post = post;
    Get.toNamed(Routes.DETAILS);
  }
}
