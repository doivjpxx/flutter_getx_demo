import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_sample/app/data/model/model.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class MyApiClient {
  final http.Client client;

  MyApiClient({@required this.client});

  getAll() async {
    try {
      var response = await client.get(baseUrl);
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<MyModel> listMyModel =
            jsonResponse.map((model) => MyModel.fromJson(model)).toList();
        return listMyModel;
      } else {
        print('error');
      }
    } catch (_) {}
  }
}
