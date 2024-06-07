import 'package:dartz/dartz.dart';
import 'package:health_moble_client/core/Utils/typedof.dart';
import 'package:health_moble_client/core/errors/failure.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Data/data_source/login_source.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Data/models/login_model.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Domain/entities/loginResponse.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Domain/repository/IloginRepo.dart';

class LoginRepo extends ILoginRepo {
  LoginRepo(this.loginSource);

  final LoginSource loginSource;

  @override
  ResultFuture<LoginResponse> login(
      {required String email, required String password}) async {
    final result = await loginSource.login(email: email, password: password);

    return result == null
        ? left(ApiFailure(message: "Failed", statusCode: 500))
        : right(LoginModel(
            message: result.message,
            token: result.token,
            success: result.success,
            refreshToken: result.refreshToken,
            status: result.status));
  }
}
