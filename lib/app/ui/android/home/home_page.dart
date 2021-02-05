import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/app/controller/home/home_controller.dart';
import 'package:flutter_getx_sample/app/ui/android/widgets/loading_widget.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetX<HomeController>(
          initState: (state) {
            Get.find<HomeController>().getAll();
          },
          builder: (_) {
            return _.postsList.length < 1
                ? LoadingWidget()
                : ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_.postsList[index].title ?? 'a'),
                        subtitle: Text(_.postsList[index].body ?? 'b'),
                        onTap: () => _.detail(_.postsList[index]),
                      );
                    },
                    itemCount: _.postsList.length,
                  );
          },
        ),
      ),
    );
  }
}
