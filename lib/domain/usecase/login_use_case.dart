import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/repository_contract/auth_repository.dart';
import 'package:injectable/injectable.dart';

import '../failures.dart';
import '../model/AuthResult.dart';

@injectable
class LoginUseCase {
  AuthRepository authRepository;

  @factoryMethod
  LoginUseCase(this.authRepository);

  Future<Either<Failures, AuthResult>> invoke(String email, String password) {
    return authRepository.login(email, password);
  }
}
