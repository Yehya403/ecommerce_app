import 'package:ecommerce_app/data/api_manager.dart';
import 'package:ecommerce_app/domain/model/Product.dart';

import 'package:ecommerce_app/domain/repository_contract/ProductsRepo.dart';
import 'package:injectable/injectable.dart';

import '../dataSourceContract/ProductsDataSource.dart';

@Injectable(as: ProductsDataSource)
class ProductsOnlineDataSourceImpl extends ProductsDataSource {
  ApiManager apiManager;
  @factoryMethod ProductsOnlineDataSourceImpl(this.apiManager);
  @override
  Future<List<Product>?> getProducts({ProductSort? sort}) async {
    var response = await apiManager.getProducts(sort: sort);
    return response.data?.map((productDto) => productDto.toProduct()).toList();
  }

}