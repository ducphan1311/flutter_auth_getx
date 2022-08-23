import 'package:get/get.dart';
import 'package:getx_flutter_demo_project/presentation/auth/controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}