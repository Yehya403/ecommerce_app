import 'package:dartz/dartz.dart';

import '../../domain/failures.dart';
import '../../domain/model/AddToCartResponse.dart';

abstract class AddToCartDataSource {
  Future<Either<Failures, AddToCartResponse>> addToCart(
      {required String productId});
}
