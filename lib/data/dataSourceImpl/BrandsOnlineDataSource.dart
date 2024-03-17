import 'package:ecommerce_app/data/api_manager.dart';
import 'package:injectable/injectable.dart';

import '../../domain/model/Brand.dart';
import '../dataSourceContract/brands_data_source.dart';

@Injectable(as: BrandsDataSource)
class BrandsOnlineDataSource extends BrandsDataSource{
  ApiManager apiManager;
  @factoryMethod BrandsOnlineDataSource(this.apiManager);

  @override
  Future<List<Brand>?> getBrands() async {
    var response = await apiManager.getBrands();
    return response.data?.map((brandDto) => brandDto.toBrand()).toList();
  }
}