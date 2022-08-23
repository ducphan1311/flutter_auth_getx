import 'package:get/get.dart';
import 'package:getx_flutter_demo_project/middleware/auth_middleware.dart';
import 'package:getx_flutter_demo_project/presentation/auth/bindings/auth_binding.dart';
import 'package:getx_flutter_demo_project/presentation/home/bindings/home_binding.dart';
import 'package:getx_flutter_demo_project/presentation/home/views/home_page.dart';
import 'package:getx_flutter_demo_project/presentation/auth/views/login_page.dart';
import 'package:getx_flutter_demo_project/presentation/second_page.dart';

class AppPages {
  AppPages._();

  static const initial = LoginPage.path;

  static final routes = [
    GetPage(
      middlewares: [
        //only enter this route when not authed
        EnsureNotAuthedMiddleware(),
      ],
      preventDuplicates: true,
      name: LoginPage.path,
      page: () => LoginPage(),
      bindings: [AuthBinding()],
    ),
    GetPage(
        middlewares: [
          //only enter this route when authed
          EnsureNotAuthedMiddleware(),
        ],
      preventDuplicates: true,
      name: HomePage.path,
      page: () => const HomePage(),
      bindings: [
        HomeBinding(),
      ],
      title: null,
      children: [
        GetPage(
          preventDuplicates: true,
          name: SecondPage.path,
          page: () => SecondPage(),
        ),
      ]
    ),
  ];
}
