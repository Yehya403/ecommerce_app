import '../model/Brand.dart';

abstract class BrandsRepo {
  Future<List<Brand>?> getBrands();
}