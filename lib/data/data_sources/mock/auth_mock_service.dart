import 'package:getx_flutter_demo_project/data/dto/authentication_dto.dart';
import 'package:getx_flutter_demo_project/data/dto/user_dto.dart';
import 'package:getx_flutter_demo_project/domain/entity/authentication_model.dart';
import 'package:getx_flutter_demo_project/domain/entity/user_model.dart';

class AuthMockService {
  Future<AuthenticationModel> login(String userName, String passWord) async {
    return AuthenticationDto('accessToken', 'refreshToken');
  }

  Future logout() async {
  }

  Future<UserModel> profile() async {
    return UserDto('duc');
  }

}