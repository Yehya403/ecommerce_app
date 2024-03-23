import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/failures.dart';
import 'package:ecommerce_app/domain/model/AddToCartResponse.dart';

abstract class AddToCartRepository {
  Future<Either<Failures, AddToCartResponse>> addToCart(
      {required String productId});
}
