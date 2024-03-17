import 'package:injectable/injectable.dart';

import '../model/Brand.dart';
import '../repository_contract/BrandsRepo.dart';

@injectable
class GetBrandsUsecase{
BrandsRepo brandsRepo;
@factoryMethod GetBrandsUsecase(this.brandsRepo);
Future<List<Brand>?> invoke(){
return brandsRepo.getBrands();
}
}