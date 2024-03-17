import 'package:ecommerce_app/domain/model/Category.dart';

abstract class CategoriesDataSource {
  Future<List<Category>?> getCategories();
}