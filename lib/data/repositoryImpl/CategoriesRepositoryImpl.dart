import 'package:ecommerce_app/domain/model/Category.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository_contract/CategoriesRepository.dart';
import '../dataSourceContract/categories_data_source.dart';

@Injectable(as: CategoriesRepository)
class CategoriesRepositoryImpl extends CategoriesRepository {
  CategoriesDataSource categoriesOnlineDataSource;
  @factoryMethod CategoriesRepositoryImpl(this.categoriesOnlineDataSource);

  @override
  Future<List<Category>?> getCategories() {
    return categoriesOnlineDataSource.getCategories();
  }


}