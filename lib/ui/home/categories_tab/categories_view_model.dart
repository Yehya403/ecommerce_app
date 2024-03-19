import 'package:ecommerce_app/domain/usecase/get_categories_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/model/Category.dart';

@injectable
class CategoriesViewModel extends Cubit<CategoriesState> {
  GetCategoriesUsecase getCategoriesUseCase;

  @factoryMethod
  CategoriesViewModel(this.getCategoriesUseCase) : super(LoadingState());

  loadCategories() async {
    try {
      emit(LoadingState());
      var categories = await getCategoriesUseCase.invoke();
      emit(SuccessState(categories));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}

sealed class CategoriesState {}

class LoadingState extends CategoriesState {}

class SuccessState extends CategoriesState {
  List<Category>? categories;

  SuccessState(this.categories);
}

class ErrorState extends CategoriesState {
  String? message;

  ErrorState(this.message);
}
