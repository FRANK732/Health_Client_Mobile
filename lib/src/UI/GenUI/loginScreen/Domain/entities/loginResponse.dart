import 'dart:convert';

class LoginResponse {
  dynamic refreshToken;
  dynamic token;
  int status;
  bool success;
  String message;

  LoginResponse({
    required this.refreshToken,
    required this.token,
    required this.status,
    required this.success,
    required this.message,
  });
}
