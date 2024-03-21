import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/failures.dart';
import 'package:ecommerce_app/domain/model/AuthResult.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failures, AuthResult>> register(String name, String email,
      String password, String rePassword, String phone);

  Future<Either<Failures, AuthResult>> login(String email, String password);
}
