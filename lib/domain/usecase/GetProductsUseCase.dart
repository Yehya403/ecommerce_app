import 'package:injectable/injectable.dart';

import '../model/Category.dart';
import '../model/Product.dart';
import '../repository_contract/ProductsRepo.dart';

@injectable
class GetProductsUseCase {
  ProductsRepo productsRepo;

  @factoryMethod
  GetProductsUseCase(this.productsRepo);

  Future<List<Product>?> invoke({Category? category}) {
    return productsRepo.getProducts(categoryId: category?.id);
  }
}
