import 'package:health_moble_client/core/Utils/typedof.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Domain/entities/loginResponse.dart';

abstract class ILoginRepo {
  ILoginRepo();

  ResultFuture<LoginResponse> login(
      {required String email, required String password});
}
