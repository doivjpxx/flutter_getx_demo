import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_sample/app/data/provider/api.dart';

class MyRepository {
  final MyApiClient apiClient;

  MyRepository({@required this.apiClient}) : assert(apiClient != null);

  getAll() {
    return apiClient.getAll();
  }
}
