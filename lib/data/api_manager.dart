import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/api_constants.dart';
import 'package:ecommerce_app/data/model/response/cartResponse/AddToCartResponseDto.dart';
import 'package:ecommerce_app/domain/failures.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:injectable/injectable.dart';

import '../domain/repository_contract/ProductsRepo.dart';
import '../ui/utils/shared_preference_utils.dart';
import 'LoggingInterceptor.dart';

import 'model/request/loginRequest/LoginRequest.dart';
import 'model/request/registerRequest/RegisterRequest.dart';
import 'model/response/brandsResponse/BrandsResponse.dart';
import 'model/response/categoryResponse/CategoriesResponse.dart';
import 'model/response/loginResponse/LoginResponse.dart';
import 'model/response/productsResponse/ProductsResponse.dart';
import 'model/response/registerResponse/RegisterResponse.dart';

@singleton
@injectable
class ApiManager {
  Client client = InterceptedClient.build(interceptors: [
    LoggingInterceptor(),
  ]);

  Future<CategoriesResponse> getCategories() async {
    var url = Uri.https(ApiConstants.baseUrl, ApiConstants.categoriesApi);
    var response = await client.get(url);
    var json = jsonDecode(response.body);
    var categoriesResponse = CategoriesResponse.fromJson(json);
    return categoriesResponse;
  }

  Future<BrandsResponse> getBrands() async {
    var url = Uri.https(ApiConstants.baseUrl, ApiConstants.brandsApi);
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
      params['category'] = categoryId;
    }
    var url = Uri.https(
      ApiConstants.baseUrl,
      ApiConstants.productsApi,
    );
    var response = await client.get(url);
    var json = jsonDecode(response.body);
    var productsResponse = ProductsResponse.fromJson(json);
    return productsResponse;
  }

  Future<Either<Failures, RegisterResponse>> register(String name, String email,
      String password, String rePassword, String phone) async {
    var url = Uri.https(ApiConstants.baseUrl, ApiConstants.registerApi);
    final ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      var registerBody = RegisterRequest(
          name: name,
          email: email,
          password: password,
          rePassword: rePassword,
          phone: phone);

      var response = await client.post(url, body: registerBody.toJson());

      var registerResponse =
          RegisterResponse.fromJson(jsonDecode(response.body));
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return Right(registerResponse);
      } else {
        return Left(ServerError(
            errorMessage: registerResponse.error != null
                ? registerResponse.error!.msg
                : registerResponse.message));
      }
    } else {
      return Left(
          NetworkError(errorMessage: 'Please check your internet connection'));
    }
  }

  Future<Either<Failures, LoginResponse>> login(
      String email, String password) async {
    var url = Uri.https(ApiConstants.baseUrl, ApiConstants.loginApi);
    final ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a mobile network or wifi.
      var loginBody = LoginRequest(
        email: email,
        password: password,
      );

      var response = await client.post(url, body: loginBody.toJson());

      var loginResponse = LoginResponse.fromJson(jsonDecode(response.body));
      if (response.statusCode >= 200 && response.statusCode < 300) {
        SharedPreferenceUtils.saveData(
            key: 'token', value: loginResponse.token);
        return Right(loginResponse);
      } else {
        return Left(ServerError(errorMessage: loginResponse.message));
      }
    } else {
      return Left(
          NetworkError(errorMessage: 'Please check your internet connection'));
    }
  }

  Future<Either<Failures, AddToCartResponseDto>> addToCart(
      {required String productId}) async {
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.addToCartApi);
    final ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      var token = SharedPreferenceUtils.getData(key: 'token');
      // I am connected to a mobile network or wifi.
      var response = await client.post(url,
          body: {'productId': productId}, headers: {'token': token.toString()});
      var addToCartResponse =
          AddToCartResponseDto.fromJson(jsonDecode(response.body));
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return Right(addToCartResponse);
      } else if (response.statusCode == 401) {
        return Left(ServerError(errorMessage: addToCartResponse.message));
      } else {
        return Left(ServerError(errorMessage: addToCartResponse.message));
      }
    } else {
      return Left(
          NetworkError(errorMessage: 'Please check your internet connection'));
    }
  }
}
