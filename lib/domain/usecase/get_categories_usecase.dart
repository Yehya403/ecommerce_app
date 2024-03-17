import 'package:injectable/injectable.dart';

import '../model/Category.dart';
import '../repository_contract/CategoriesRepository.dart';

@injectable
class GetCategoriesUsecase {
  CategoriesRepository repository;
  @factoryMethod GetCategoriesUsecase(this.repository);

  Future<List<Category>?> invoke() {
    return repository.getCategories();
  }
}