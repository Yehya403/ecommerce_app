import 'package:ecommerce_app/domain/model/Brand.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository_contract/BrandsRepo.dart';
import '../dataSourceContract/brands_data_source.dart';

@Injectable(as: BrandsRepo)
class BrandsRepoImpl extends BrandsRepo {
  BrandsDataSource brandsOnlineDataSource;
  @factoryMethod BrandsRepoImpl(this.brandsOnlineDataSource);

  @override
  Future<List<Brand>?> getBrands() {
return brandsOnlineDataSource.getBrands();
  }
}