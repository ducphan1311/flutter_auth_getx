import 'package:getx_flutter_demo_project/domain/entity/authentication_model.dart';
import 'package:getx_flutter_demo_project/domain/entity/user_model.dart';

abstract class AuthRepository {
  Future<AuthenticationModel> login(String userName, String passWord);

  Future logout();

  Future<UserModel> profile();
}