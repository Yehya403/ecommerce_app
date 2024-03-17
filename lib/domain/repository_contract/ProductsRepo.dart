import '../model/Product.dart';

abstract class ProductsRepo {
  Future<List<Product>?> getProducts({ProductSort? sort});
}

enum ProductSort {
  lowestPrice('price'),
  highestPrice('-price'),
  mostSelling('-sold'),;

  final String value ;
  const ProductSort(this.value);
}
