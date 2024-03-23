import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/failures.dart';
import '../../domain/model/AddToCartResponse.dart';
import '../../domain/repository_contract/AddToCartRepository.dart';
import '../dataSourceContract/AddToCartDataSource.dart';

@Injectable(as: AddToCartRepository)
class AddToCartRepositoryImpl extends AddToCartRepository {
  AddToCartDataSource addToCartDataSource;

  @factoryMethod
  AddToCartRepositoryImpl({required this.addToCartDataSource});

  @override
  Future<Either<Failures, AddToCartResponse>> addToCart(
      {required String productId}) {
    return addToCartDataSource.addToCart(productId: productId);
  }
}
