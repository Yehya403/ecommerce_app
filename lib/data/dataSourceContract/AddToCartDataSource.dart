import 'package:dartz/dartz.dart';

import '../../domain/failures.dart';
import '../../domain/model/AddToCart.dart';

abstract class AddToCartDataSource {
  Future<Either<Failures, AddToCart>> addToCart({required String productId});
}
