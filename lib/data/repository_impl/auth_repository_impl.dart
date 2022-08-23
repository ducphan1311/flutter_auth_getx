import 'package:getx_flutter_demo_project/data/data_sources/mock/auth_mock_service.dart';
import 'package:getx_flutter_demo_project/domain/entity/authentication_model.dart';
import 'package:getx_flutter_demo_project/domain/entity/user_model.dart';
import 'package:getx_flutter_demo_project/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  var authMockService = AuthMockService();
  @override
  Future<AuthenticationModel> login(String userName, String passWord) {
    return authMockService.login(userName, passWord);
  }

  @override
  Future logout() {
    return authMockService.logout();
  }

  @override
  Future<UserModel> profile() {
    return authMockService.profile();
  }

}