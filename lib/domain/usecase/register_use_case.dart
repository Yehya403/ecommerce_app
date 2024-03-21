import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/repository_contract/auth_repository.dart';
import 'package:injectable/injectable.dart';

import '../failures.dart';
import '../model/AuthResult.dart';

@injectable
class RegisterUseCase {
  AuthRepository authRepository;

  @factoryMethod
  RegisterUseCase(this.authRepository);

  Future<Either<Failures, AuthResult>> invoke(String name, String email,
      String password, String rePassword, String phone) {
    return authRepository.register(name, email, password, rePassword, phone);
  }
}
