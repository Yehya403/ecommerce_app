import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/api_manager.dart';
import 'package:ecommerce_app/domain/failures.dart';
import 'package:ecommerce_app/domain/model/Cart.dart';
import 'package:injectable/injectable.dart';

import '../dataSourceContract/CartDataSource.dart';

@Injectable(as: CartDataSource)
class CartDataSourceImpl extends CartDataSource {
  ApiManager apiManager;

  @factoryMethod
  CartDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Failures, Cart>> getCart() async {
    var either = await apiManager.getCart();
    return either.fold((error) {
      return Left(Failures(errorMessage: error.errorMessage));
    }, (response) {
      return Right(response.toCart());
    });
  }

  @override
  Future<Either<Failures, Cart>> removeFromCart(
      {required String productId}) async {
    var either = await apiManager.removeFromCart(productId: productId);
    return either.fold((error) {
      return Left(Failures(errorMessage: error.errorMessage));
    }, (response) {
      return Right(response.toCart());
    });
  }

  @override
  Future<Either<Failures, Cart>> updateCountInCart(
      {required String productId, required int count}) async {
    var either =
        await apiManager.updateCountInCart(productId: productId, count: count);
    return either.fold((error) {
      return Left(Failures(errorMessage: error.errorMessage));
    }, (response) {
      return Right(response.toCart());
    });
  }
}
