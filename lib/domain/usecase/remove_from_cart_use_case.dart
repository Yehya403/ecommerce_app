import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../failures.dart';
import '../model/Cart.dart';
import '../repository_contract/CartRepository.dart';

@injectable
class RemoveFromCartUseCase {
  CartRepository cartRepository;

  @factoryMethod
  RemoveFromCartUseCase(this.cartRepository);

  Future<Either<Failures, Cart>> invoke({required String productId}) async {
    return await cartRepository.removeFromCart(productId: productId);
  }
}
