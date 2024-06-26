import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/repository_contract/AddToCartRepository.dart';
import 'package:injectable/injectable.dart';

import '../failures.dart';
import '../model/AddToCart.dart';

@injectable
class AddToCartUseCase {
  AddToCartRepository addToCartRepository;

  @factoryMethod
  AddToCartUseCase(this.addToCartRepository);

  Future<Either<Failures, AddToCart>> invoke(
      {required String productId}) async {
    return await addToCartRepository.addToCart(productId: productId);
  }
}
