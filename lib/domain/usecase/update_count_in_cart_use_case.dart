import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../failures.dart';
import '../model/Cart.dart';
import '../repository_contract/CartRepository.dart';

@injectable
class UpdateCountInCartUseCase {
  CartRepository cartRepository;

  @factoryMethod
  UpdateCountInCartUseCase(this.cartRepository);

  Future<Either<Failures, Cart>> invoke(
      {required String productId, required int count}) async {
    return await cartRepository.updateCountInCart(
        productId: productId, count: count);
  }
}
