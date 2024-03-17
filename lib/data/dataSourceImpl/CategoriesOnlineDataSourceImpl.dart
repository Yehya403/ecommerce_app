import 'package:injectable/injectable.dart';

import '../../domain/model/Category.dart';
import '../api_manager.dart';
import '../dataSourceContract/categories_data_source.dart';

@Injectable(as: CategoriesDataSource)
class CategoriesOnlineDataSourceImpl extends CategoriesDataSource {
  ApiManager apiManager;
  @factoryMethod CategoriesOnlineDataSourceImpl(this.apiManager);

  @override
  Future<List<Category>?> getCategories() async {
    var response = await apiManager.getCategories();
    return response.data?.map((catDto) => catDto.toCategory()).toList();

  }
  }