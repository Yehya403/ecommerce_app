import 'package:ecommerce_app/domain/failures.dart';

import '../../domain/model/AddToCartResponse.dart';
import '../../domain/model/Product.dart';

abstract class CatalogState {}

class ProductsLoadingState extends CatalogState {}

class ProductsSuccessState extends CatalogState {
  List<Product>? products;

  ProductsSuccessState(this.products);
}

class ProductsErrorState extends CatalogState {
  String? message;

  ProductsErrorState(
    this.message,
  );
}

class AddToCartLoadingState extends CatalogState {
  String? loadingMessage;

  AddToCartLoadingState({required this.loadingMessage});
}

class AddToCartErrorState extends CatalogState {
  Failures errorMessage;

  AddToCartErrorState({required this.errorMessage});
}

class AddToCartSuccessState extends CatalogState {
  AddToCartResponse addToCartResponse;

  AddToCartSuccessState({required this.addToCartResponse});
}
