import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/failures.dart';
import 'package:ecommerce_app/domain/model/Cart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository_contract/CartRepository.dart';
import '../dataSourceContract/CartDataSource.dart';

@Injectable(as: CartRepository)
class CartRepositoryImpl extends CartRepository {
  CartDataSource cartDataSource;

  @factoryMethod
  CartRepositoryImpl({required this.cartDataSource});

  @override
  Future<Either<Failures, Cart>> getCart() {
    return cartDataSource.getCart();
  }

  @override
  Future<Either<Failures, Cart>> removeFromCart({required String productId}) {
    return cartDataSource.removeFromCart(productId: productId);
  }

  @override
  Future<Either<Failures, Cart>> updateCountInCart(
      {required String productId, required int count}) {
    return cartDataSource.updateCountInCart(productId: productId, count: count);
  }
}
