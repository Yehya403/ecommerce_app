import '../../domain/model/Product.dart';
import '../../domain/repository_contract/ProductsRepo.dart';

abstract class ProductsDataSource{
  Future<List<Product>?> getProducts({ProductSort? sort});
}