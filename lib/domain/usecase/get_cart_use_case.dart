import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../failures.dart';
import '../model/Cart.dart';
import '../repository_contract/CartRepository.dart';

@injectable
class GetCartUseCase {
  final CartRepository cartRepository;

  @factoryMethod
  GetCartUseCase(this.cartRepository);

  Future<Either<Failures, Cart>> invoke() async {
    return await cartRepository.getCart();
  }
}
