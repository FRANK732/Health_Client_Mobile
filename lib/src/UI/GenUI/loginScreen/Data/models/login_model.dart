import 'package:health_moble_client/src/UI/GenUI/loginScreen/Domain/entities/loginResponse.dart';

// LoginModel loginResponseFromJson(String str) =>
//     LoginResponse.fromJson(json.decode(str));

// String loginResponseToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel extends LoginResponse {
  LoginModel(
      {required super.refreshToken,
      required super.token,
      required super.status,
      required super.success,
      required super.message});

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        refreshToken: json["refreshToken"],
        token: json["token"],
        status: json["status"],
        success: json["success"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "refreshToken": refreshToken,
        "token": token,
        "status": status,
        "success": success,
        "message": message,
      };
}
