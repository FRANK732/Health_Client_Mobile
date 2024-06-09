import 'dart:convert';

import 'package:health_moble_client/core/Utils/typedof.dart';
import 'package:health_moble_client/core/constant/constants.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Data/data_source/Ilogin_source.dart';
import 'package:health_moble_client/src/UI/GenUI/loginScreen/Data/models/login_model.dart';
import 'package:http/http.dart' as http;

class LoginSource extends ILoginSource {
  @override
  Future<LoginModel> login(
      {required String email, required String password}) async {
    try {
      const String apiUrl = '$HealthBaseUrl/api/Authheath/Login';
      final Map<String, dynamic> requestBody = {
        'username': email.trim(),
        'password': password,
        'status': 'storeKeeper'
      };

      final http.Response response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 200) {
        final userResponse = json.decode(response.body);
        final userDataMap = userResponse;
        if (userDataMap == null) {
          throw ArgumentError("user data is missing in the response");
        }

        final userModel = LoginModel.fromJson(userDataMap as DataMapping);
        // if (rememberMe && userModel.token != null) {
        //   await secureStorage.write(key: "authToken", value: userModel.token!);
        // }

        print("userDataMap $userDataMap");
        // await secureStorage.writeModel<LoginModel>(
        //     key: "UserData",
        //     model: userModel,
        //     toJson: (model) => model.toJson());

        return userModel;
      } else {
        // Handle HTTP errors or unsuccessful login attempts
        throw ArgumentError("Failed to login");
      }
    } catch (e) {
      throw ArgumentError("Failed to login");
    }
  }
}
