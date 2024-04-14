import 'package:dartz/dartz.dart';

import '../failures.dart';
import '../model/Cart.dart';

abstract class CartRepository {
  Future<Either<Failures, Cart>> getCart();

  Future<Either<Failures, Cart>> removeFromCart({required String productId});

  Future<Either<Failures, Cart>> updateCountInCart(
      {required String productId, required int count});
}
