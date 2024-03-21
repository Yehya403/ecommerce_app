import '../../../domain/model/AuthResult.dart';
import '../registerResponse/UserDto.dart';

class LoginResponse {
  LoginResponse({this.message, this.user, this.token, this.statusMsg});

  LoginResponse.fromJson(dynamic json) {
    message = json['message'];
    user = json['user'] != null ? UserDto.fromJson(json['user']) : null;
    token = json['token'];
    statusMsg = json['statusMsg'];
  }

  String? message;
  UserDto? user;
  String? token;
  String? statusMsg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (user != null) {
      map['user'] = user?.toJson();
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
