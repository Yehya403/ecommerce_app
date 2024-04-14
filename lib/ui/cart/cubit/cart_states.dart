import 'package:ecommerce_app/domain/failures.dart';

import '../../../domain/model/Cart.dart';

abstract class CartStates {}

class CartInitialState extends CartStates {}

class CartLoadingState extends CartStates {
  String? loadingMessage;

  CartLoadingState({required this.loadingMessage});
}

class CartErrorState extends CartStates {
  Failures? errorMessage;

  CartErrorState({required this.errorMessage});
}

class CartSuccessState extends CartStates {
  Cart getCart;

  CartSuccessState({required this.getCart});
}

class RemoveFromCartLoadingState extends CartStates {
  String? loadingMessage;

  RemoveFromCartLoadingState({required this.loadingMessage});
}

class RemoveFromCartErrorState extends CartStates {
  Failures? errorMessage;

  RemoveFromCartErrorState({required this.errorMessage});
}

class RemoveFromCartSuccessState extends CartStates {
  Cart getCart;

  RemoveFromCartSuccessState({required this.getCart});
}

class UpdateCountInCartLoadingState extends CartStates {
  String? loadingMessage;

  UpdateCountInCartLoadingState({required this.loadingMessage});
}

class UpdateCountInCartErrorState extends CartStates {
  Failures? errorMessage;

  UpdateCountInCartErrorState({required this.errorMessage});
}

class UpdateCountInCartSuccessState extends CartStates {
  Cart getCart;

  UpdateCountInCartSuccessState({required this.getCart});
}
