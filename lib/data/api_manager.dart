import 'dart:convert';

import 'package:ecommerce_app/data/LoggingInterceptor.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:injectable/injectable.dart';

import '../domain/repository_contract/ProductsRepo.dart';
import 'model/brandsResponse/BrandsResponse.dart';
import 'model/categoryResponse/CategoriesResponse.dart';
import 'model/productsResponse/ProductsResponse.dart';

//https://ecommerce.routemisr.com/api/v1/categories
//https://ecommerce.routemisr.com/api/v1/brands
//https://ecommerce.routemisr.com/api/v1/products

@singleton
@injectable
class ApiManager {
  static const baseUrl = 'ecommerce.routemisr.com';
  Client client = InterceptedClient.build(interceptors: [
    LoggingInterceptor(),
  ]);

  Future<CategoriesResponse> getCategories() async {
    var url = Uri.https(baseUrl, 'api/v1/categories');
    var response = await client.get(url);
    var json = jsonDecode(response.body);
    var categoriesResponse = CategoriesResponse.fromJson(json);
    return categoriesResponse;
  }

  Future<BrandsResponse> getBrands() async {
    var url = Uri.https(baseUrl, 'api/v1/brands');
    var response = await client.get(url);
    var json = jsonDecode(response.body);
    var brandsResponse = BrandsResponse.fromJson(json);
    return brandsResponse;
  }

  Future<ProductsResponse> getProducts(
      {ProductSort? sort, String? categoryId}) async {
    var params = {};
    if (sort != null) {
      params['sort'] = sort.value;
    }
    if (categoryId != null) {
      params['category[in]'] = categoryId;
    }
    var url = Uri.https(
      baseUrl,
      'api/v1/products',
    );
    var response = await client.get(url);
    var json = jsonDecode(response.body);
    var productsResponse = ProductsResponse.fromJson(json);
    return productsResponse;
  }
}
