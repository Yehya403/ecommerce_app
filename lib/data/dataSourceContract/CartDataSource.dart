import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/failures.dart';

import '../../domain/model/Cart.dart';

abstract class CartDataSource {
  Future<Either<Failures, Cart>> getCart();

  Future<Either<Failures, Cart>> removeFromCart({required String productId});

  Future<Either<Failures, Cart>> updateCountInCart(
      {required String productId, required int count});
}
