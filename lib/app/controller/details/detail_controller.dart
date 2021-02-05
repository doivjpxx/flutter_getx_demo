import 'package:flutter/foundation.dart';
import 'package:flutter_getx_sample/app/data/model/model.dart';
import 'package:flutter_getx_sample/app/data/repository/post_repository.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  final MyRepository myRepository;

  DetailController({@required this.myRepository})
      : assert(myRepository != null);

  final _post = MyModel().obs;
  get post => this.post.value;
  set post(value) => this._post.value = value;

  edit(post) {}

  delete(id) {}
}
