// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api_manager.dart' as _i3;
import '../data/dataSourceContract/ProductsDataSource.dart' as _i15;
import '../data/dataSourceContract/brands_data_source.dart' as _i4;
import '../data/dataSourceContract/categories_data_source.dart' as _i8;
import '../data/dataSourceImpl/BrandsOnlineDataSource.dart' as _i5;
import '../data/dataSourceImpl/CategoriesOnlineDataSourceImpl.dart' as _i9;
import '../data/dataSourceImpl/ProductsOnlineDataSourceImpl.dart' as _i16;
import '../data/repositoryImpl/BrandsRepoImpl.dart' as _i7;
import '../data/repositoryImpl/CategoriesRepositoryImpl.dart' as _i11;
import '../data/repositoryImpl/ProductsRepoImpl.dart' as _i18;
import '../domain/repository_contract/BrandsRepo.dart' as _i6;
import '../domain/repository_contract/CategoriesRepository.dart' as _i10;
import '../domain/repository_contract/ProductsRepo.dart' as _i17;
import '../domain/usecase/GetMostSellingProducts.dart' as _i20;
import '../domain/usecase/GetProductsUseCase.dart' as _i21;
import '../domain/usecase/get_brands_usecase.dart' as _i12;
import '../domain/usecase/get_categories_usecase.dart' as _i13;
import '../ui/home/categories_tab/categories_view_model.dart' as _i19;
import '../ui/home/home_screen_view_model.dart' as _i14;
import '../ui/home/home_tab/home_tab_view_model.dart' as _i22;
import '../ui/products_catalog/catalog_view_model.dart' as _i23;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ApiManager>(_i3.ApiManager());
    gh.factory<_i4.BrandsDataSource>(
        () => _i5.BrandsOnlineDataSource(gh<_i3.ApiManager>()));
    gh.factory<_i6.BrandsRepo>(
        () => _i7.BrandsRepoImpl(gh<_i4.BrandsDataSource>()));
    gh.factory<_i8.CategoriesDataSource>(
        () => _i9.CategoriesOnlineDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i10.CategoriesRepository>(
        () => _i11.CategoriesRepositoryImpl(gh<_i8.CategoriesDataSource>()));
    gh.factory<_i12.GetBrandsUsecase>(
        () => _i12.GetBrandsUsecase(gh<_i6.BrandsRepo>()));
    gh.factory<_i13.GetCategoriesUsecase>(
        () => _i13.GetCategoriesUsecase(gh<_i10.CategoriesRepository>()));
    gh.factory<_i14.HomeViewModel>(() => _i14.HomeViewModel());
    gh.factory<_i15.ProductsDataSource>(
        () => _i16.ProductsOnlineDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i17.ProductsRepo>(
        () => _i18.ProductsRepoImpl(gh<_i15.ProductsDataSource>()));
    gh.factory<_i19.CategoriesViewModel>(
        () => _i19.CategoriesViewModel(gh<_i13.GetCategoriesUsecase>()));
    gh.factory<_i20.GetMostSellingProducts>(
        () => _i20.GetMostSellingProducts(gh<_i17.ProductsRepo>()));
    gh.factory<_i21.GetProductsUseCase>(
        () => _i21.GetProductsUseCase(gh<_i17.ProductsRepo>()));
    gh.factory<_i22.HomeTabViewModel>(() => _i22.HomeTabViewModel(
          gh<_i13.GetCategoriesUsecase>(),
          gh<_i12.GetBrandsUsecase>(),
          gh<_i20.GetMostSellingProducts>(),
        ));
    gh.factory<_i23.CatalogViewModel>(
        () => _i23.CatalogViewModel(gh<_i21.GetProductsUseCase>()));
    return this;
  }
}
