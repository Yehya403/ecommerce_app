import 'package:injectable/injectable.dart';

import '../model/Product.dart';
import '../repository_contract/ProductsRepo.dart';

@injectable
class GetMostSellingProducts {
  ProductsRepo productsRepo;
@factoryMethod  GetMostSellingProducts(this.productsRepo);
Future<List<Product>?> invoke(){
  return productsRepo.getProducts(sort : ProductSort.mostSelling);
}
}