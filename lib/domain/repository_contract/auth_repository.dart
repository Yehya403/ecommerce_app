import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/model/AuthResult.dart';

import '../failures.dart';

abstract class AuthRepository {
  Future<Either<Failures, AuthResult>> register(String name, String email,
      String password, String rePassword, String phone);

  Future<Either<Failures, AuthResult>> login(String email, String password);
}
