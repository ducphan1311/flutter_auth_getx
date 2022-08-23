// ignore_for_file: non_constant_identifier_names

// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

import 'package:getx_flutter_demo_project/presentation/auth/views/login_page.dart';
import 'package:getx_flutter_demo_project/presentation/home/views/home_page.dart';
import 'package:getx_flutter_demo_project/presentation/second_page.dart';

abstract class Routes {
  static const home = HomePage.path;

  static const second = HomePage.path + SecondPage.path;

  static const login = LoginPage.path;
  Routes._();
  static String LOGIN_THEN(String afterSuccessfulLogin) =>
      '$login?then=${Uri.encodeQueryComponent(afterSuccessfulLogin)}';
}
