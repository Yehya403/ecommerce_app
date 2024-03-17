import 'package:injectable/injectable.dart';
import '../../domain/model/Product.dart';
import '../../domain/repository_contract/ProductsRepo.dart';
import '../dataSourceContract/ProductsDataSource.dart';

@Injectable(as: ProductsRepo)
class ProductsRepoImpl extends ProductsRepo {
  ProductsDataSource productsOnlineDataSource;

  @factoryMethod
  ProductsRepoImpl(this.productsOnlineDataSource);

  @override
  Future<List<Product>?> getProducts({ProductSort? sort}) {
    return productsOnlineDataSource.getProducts(sort: sort);
  }
}
