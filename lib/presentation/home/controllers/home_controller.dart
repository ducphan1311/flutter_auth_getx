import 'package:get/get.dart';
import 'package:getx_flutter_demo_project/data/dto/user_dto.dart';
import 'package:getx_flutter_demo_project/data/repository_impl/auth_repository_impl.dart';
import 'package:getx_flutter_demo_project/domain/entity/user_model.dart';

class HomeController extends GetxController {
  final Rx<UserModel> user = Rx(UserDto(null));
  var authRepository = AuthRepositoryImpl();

  @override
  void onReady () async {
    await profile();
  }

  Future profile() async {
    await Future.delayed(Duration(seconds: 2));
    var profile = await authRepository.profile();
    user.value = profile;
  }
}