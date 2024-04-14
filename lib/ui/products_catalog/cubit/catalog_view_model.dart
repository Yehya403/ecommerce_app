import 'package:ecommerce_app/domain/usecase/add_to_cart_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/model/Category.dart';
import '../../../domain/usecase/GetProductsUseCase.dart';
import 'catalog_states.dart';

@injectable
class CatalogViewModel extends Cubit<CatalogState> {
  GetProductsUseCase getProductsUseCase;
  Category? category;
  AddToCartUseCase addToCartUseCase;

  CatalogViewModel(this.getProductsUseCase, this.addToCartUseCase)
      : super(ProductsLoadingState());

  int numOfCartItems = 0;

  static CatalogViewModel get(context) {
    return BlocProvider.of<CatalogViewModel>(context);
  }

  loadProducts({Category? category}) async {
    try {
      emit(ProductsLoadingState());
      var products = await getProductsUseCase.invoke(category: this.category);
      emit(ProductsSuccessState(products));
    } catch (e) {
      emit(ProductsErrorState(e.toString()));
    }
  }

  addToCart({required String productId}) async {
    emit(AddToCartLoadingState(loadingMessage: 'Loading....'));
    var either = await addToCartUseCase.invoke(productId: productId);
    var products = await getProductsUseCase.invoke(category: category);

    either.fold((error) {
      emit(AddToCartErrorState(errorMessage: error));
    }, (response) {
      numOfCartItems = response.numOfCartItems!.toInt();
      print('numOfCartItems: $numOfCartItems');
      emit(AddToCartSuccessState(addToCartResponse: response));
      emit(ProductsSuccessState(products));
    });
  }
}
