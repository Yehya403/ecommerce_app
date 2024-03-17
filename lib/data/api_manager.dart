import 'dart:convert';
import 'package:http/http.dart' as http;
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
class ApiManager{
static const baseUrl = 'ecommerce.routemisr.com';
Future<CategoriesResponse> getCategories() async {
var url = Uri.https(baseUrl,'api/v1/categories');
var response = await http.get(url);
var json = jsonDecode(response.body);
var categoriesResponse = CategoriesResponse.fromJson(json);
return categoriesResponse;
}

Future<BrandsResponse> getBrands() async {
  var url = Uri.https(baseUrl, 'api/v1/brands');
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  var brandsResponse = BrandsResponse.fromJson(json);
  return brandsResponse;
}

Future<ProductsResponse> getProducts({ProductSort? sort}) async {
  var params = {};
  if(sort != null){
    params['sort'] = sort.value;
  }
  var url = Uri.https(baseUrl, 'api/v1/products',);
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  var productsResponse = ProductsResponse.fromJson(json);
  return productsResponse;
}

}