import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/model/Category.dart';
import '../../domain/model/Product.dart';
import '../../domain/usecase/GetProductsUseCase.dart';

@injectable
class CatalogViewModel extends Cubit<CatalogState> {
  GetProductsUseCase getProductsUseCase;
  Category? category;

  @factoryMethod
  CatalogViewModel(this.getProductsUseCase) : super(LoadingState());

  loadProducts({Category? category}) async {
    try {
      emit(LoadingState());
      var products = await getProductsUseCase.invoke(category: this.category);
      emit(SuccessState(products));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}

sealed class CatalogState {}

class LoadingState extends CatalogState {}

class SuccessState extends CatalogState {
  List<Product>? products;

  SuccessState(this.products);
}

class ErrorState extends CatalogState {
  String? message;

  ErrorState(this.message);
}
