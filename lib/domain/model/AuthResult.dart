import 'User.dart';

/// user : {"name":"test1","email":"test223@gmail.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1ZmI1NGQxYmU4YjUyMzIzNTdhOGEzYyIsIm5hbWUiOiJ0ZXN0MSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzEwOTcwMDY2LCJleHAiOjE3MTg3NDYwNjZ9.2JrSsPzzudNCD2RZaLPo5opzzKA3c4cBVkd9FmLzxq8"

class AuthResult {
  AuthResult({
    this.user,
    this.token,
  });

  User? user;
  String? token;
}
