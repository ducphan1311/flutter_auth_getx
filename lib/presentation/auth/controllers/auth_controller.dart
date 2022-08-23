import 'package:get/get.dart';
import 'package:getx_flutter_demo_project/data/dto/user_dto.dart';
import 'package:getx_flutter_demo_project/data/repository_impl/auth_repository_impl.dart';
import 'package:getx_flutter_demo_project/domain/entity/user_model.dart';

class AuthController extends GetxController {
  var authRepository = AuthRepositoryImpl();
  static AuthController get to => Get.find();
  final _isLoggedIn = false.obs;
  bool get isLoggedInValue => _isLoggedIn.value;



  Future login({required String userName, required String password}) async {
    await authRepository.login(userName, password);
    _isLoggedIn.value = true;
  }

  Future logout() async {
    await authRepository.logout();
    _isLoggedIn.value = false;
  }
}