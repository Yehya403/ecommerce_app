import 'package:ecommerce_app/domain/usecase/remove_from_cart_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/model/Cart.dart';
import '../../../domain/usecase/get_cart_use_case.dart';
import '../../../domain/usecase/update_count_in_cart_use_case.dart';
import 'cart_states.dart';

@injectable
class CartScreenViewModel extends Cubit<CartStates> {
  GetCartUseCase getCartUseCase;
  RemoveFromCartUseCase removeFromCartUseCase;
  UpdateCountInCartUseCase updateCountInCartUseCase;

  @factoryMethod
  CartScreenViewModel(
      {required this.getCartUseCase,
      required this.removeFromCartUseCase,
      required this.updateCountInCartUseCase})
      : super(CartInitialState());

  List<CartProduct> products = [];

  static CartScreenViewModel get(context) => BlocProvider.of(context);

  getCart() async {
    emit(CartLoadingState(loadingMessage: "Loading Cart..."));
    var either = await getCartUseCase.invoke();
    either.fold((error) {
      emit(CartErrorState(errorMessage: error));
    }, (response) {
      products = response.data?.products ?? [];
      emit(CartSuccessState(getCart: response));
    });
  }

  removeFromCart({required String productId}) async {
    emit(RemoveFromCartLoadingState(loadingMessage: "Loading Cart..."));
    var either = await removeFromCartUseCase.invoke(productId: productId);
    either.fold((error) {
      emit(RemoveFromCartErrorState(errorMessage: error));
    }, (response) {
      //products = response.data?.products ?? [];
      emit(CartSuccessState(getCart: response));
    });
  }

  updateCountInCart({required String productId, required int count}) async {
    emit(UpdateCountInCartLoadingState(loadingMessage: "Loading Cart..."));
    var either = await updateCountInCartUseCase.invoke(
        productId: productId, count: count);
    either.fold((error) {
      emit(UpdateCountInCartErrorState(errorMessage: error));
    }, (response) {
      //products = response.data?.products ?? [];
      emit(CartSuccessState(getCart: response));
    });
  }
}
