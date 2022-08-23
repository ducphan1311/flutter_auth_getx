import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_demo_project/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
