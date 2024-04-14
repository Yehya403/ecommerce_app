import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/failures.dart';

import '../model/AddToCart.dart';

abstract class AddToCartRepository {
  Future<Either<Failures, AddToCart>> addToCart({required String productId});
}
