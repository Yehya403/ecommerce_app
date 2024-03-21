import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/dataSourceContract/auth_remote_data_source.dart';
import 'package:ecommerce_app/domain/failures.dart';
import 'package:ecommerce_app/domain/model/AuthResult.dart';
import 'package:ecommerce_app/domain/repository_contract/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepoImpl extends AuthRepository {
  AuthRemoteDataSource authRemoteDataSource;

  @factoryMethod
  AuthRepoImpl(this.authRemoteDataSource);

  @override
  Future<Either<Failures, AuthResult>> register(String name, String email,
      String password, String rePassword, String phone) {
    return authRemoteDataSource.register(
        name, email, password, rePassword, phone);
  }

  @override
  Future<Either<Failures, AuthResult>> login(String email, String password) {
    return authRemoteDataSource.login(email, password);
  }
}
