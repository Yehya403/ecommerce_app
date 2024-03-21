import 'package:ecommerce_app/domain/model/AuthResult.dart';

import '../errorResponse/ErrorDto.dart';
import 'UserDto.dart';

class RegisterResponse {
  RegisterResponse({
    this.message,
    this.user,
    this.token,
    this.statusMsg,
    this.error,
  });

  RegisterResponse.fromJson(dynamic json) {
    message = json['message'];
    user = json['user'] != null ? UserDto.fromJson(json['user']) : null;
    token = json['token'];
    statusMsg = json['statusMsg'];
    error = json['errors'] != null ? ErrorDto.fromJson(json['errors']) : null;
  }

  String? message;
  UserDto? user;
  String? token;
  String? statusMsg;
  ErrorDto? error;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    if (error != null) {
      map['errors'] = error?.toJson();
    }
    map['token'] = token;
    map['statusMsg'] = statusMsg;
    return map;
  }

  AuthResult toAuthResult() {
    return AuthResult(
      token: token,
      user: user?.toUser(),
    );
  }
}
