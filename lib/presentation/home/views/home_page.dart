import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_demo_project/presentation/auth/views/login_page.dart';
import 'package:getx_flutter_demo_project/presentation/home/controllers/home_controller.dart';
import 'package:getx_flutter_demo_project/presentation/second_page.dart';
import 'package:getx_flutter_demo_project/routes/app_routes.dart';

class HomePage extends GetView<HomeController> {
  static const path = '/home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('${controller.user.value.userName}')),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: () {
              Get.toNamed(Routes.second);
            }, child: Text('Second Page')),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: () async {
              Get.offNamed(LoginPage.path);
            }, child: Text('LogOut')),
          ],
        ),
      ),
    );
  }
}
