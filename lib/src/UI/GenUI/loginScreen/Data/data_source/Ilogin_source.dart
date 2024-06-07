import 'package:health_moble_client/src/UI/GenUI/loginScreen/Data/models/login_model.dart';

abstract class ILoginSource {
  Future<LoginModel> login({required String email, required String password});
}
