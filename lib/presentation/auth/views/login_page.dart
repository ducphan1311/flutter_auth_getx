import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_demo_project/presentation/auth/controllers/auth_controller.dart';
import 'package:getx_flutter_demo_project/presentation/home/views/home_page.dart';

class LoginPage extends GetView<AuthController> {
  static const path = '/login_page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: ElevatedButton(onPressed: () async {
            await controller.login(userName: 'userName', password: 'password').then((value) {
              Get.offAllNamed(HomePage.path);
            });
          }, child: Text('LogIn')),
        ),
      ),
    );
  }
}
