import 'package:ecommerce_app/domain/usecase/GetMostSellingProducts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/model/Brand.dart';
import '../../../domain/model/Category.dart';
import '../../../domain/model/Product.dart';
import '../../../domain/usecase/get_brands_usecase.dart';
import '../../../domain/usecase/get_categories_usecase.dart';

@injectable
class HomeTabViewModel extends Cubit<HomeTabState> {
  GetCategoriesUsecase getCategoriesUseCase;
GetBrandsUsecase getBrandsUsecase;
GetMostSellingProducts getMostSellingProducts;

@factoryMethod HomeTabViewModel(this.getCategoriesUseCase,this.getBrandsUsecase,this.getMostSellingProducts):super(Loading());

initPage() async {
  emit(Loading());
  //call api
  try{
    var categories = await getCategoriesUseCase.invoke();
    var brands = await getBrandsUsecase.invoke();
    var mostSellingProducts = await getMostSellingProducts.invoke();
    emit(Success(categories,brands,mostSellingProducts));
  }catch(e){
    emit(Error(e.toString()));
  }

}

}
class HomeTabState {
}

class Loading extends HomeTabState {
}

class Error extends HomeTabState{
  String? errorMessage;
  Error([this.errorMessage]);
}

class Success extends HomeTabState{
  List<Category>? categories;
  List<Brand>? brands;
  List<Product>? mostSellingProducts;
  Success(this.categories, this.brands,this.mostSellingProducts);
}