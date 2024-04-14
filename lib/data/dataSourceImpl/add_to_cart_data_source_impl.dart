import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/api_manager.dart';
import 'package:ecommerce_app/domain/failures.dart';
import 'package:injectable/injectable.dart';

import '../../domain/model/AddToCart.dart';
import '../dataSourceContract/AddToCartDataSource.dart';

@Injectable(as: AddToCartDataSource)
class AddToCartDataSourceImpl extends AddToCartDataSource {
  ApiManager apiManager;

  @factoryMethod
  AddToCartDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Failures, AddToCart>> addToCart(
      {required String productId}) async {
    var either = await apiManager.addToCart(productId: productId);
    return either.fold((l) {
      return Left(Failures(errorMessage: l.errorMessage));
    }, (response) {
      return Right(response.toAddToCart());
    });
  }
}
