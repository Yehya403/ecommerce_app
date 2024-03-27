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
import '../data/dataSourceContract/AddToCartDataSource.dart' as _i27;
import '../data/dataSourceContract/ProductsDataSource.dart' as _i21;
import '../data/dataSourceContract/auth_remote_data_source.dart' as _i4;
import '../data/dataSourceContract/brands_data_source.dart' as _i8;
import '../data/dataSourceContract/categories_data_source.dart' as _i12;
import '../data/dataSourceImpl/BrandsOnlineDataSource.dart' as _i9;
import '../data/dataSourceImpl/CategoriesOnlineDataSourceImpl.dart' as _i13;
import '../data/dataSourceImpl/ProductsOnlineDataSourceImpl.dart' as _i22;
import '../data/dataSourceImpl/add_to_cart_data_source_impl.dart' as _i28;
import '../data/dataSourceImpl/auth_remote_data_source_impl.dart' as _i5;
import '../data/repositoryImpl/BrandsRepoImpl.dart' as _i11;
import '../data/repositoryImpl/CategoriesRepositoryImpl.dart' as _i15;
import '../data/repositoryImpl/ProductsRepoImpl.dart' as _i24;
import '../data/repositoryImpl/add_to_cart_repository_impl.dart' as _i30;
import '../data/repositoryImpl/auth_repo_impl.dart' as _i7;
import '../domain/repository_contract/AddToCartRepository.dart' as _i29;
import '../domain/repository_contract/BrandsRepo.dart' as _i10;
import '../domain/repository_contract/CategoriesRepository.dart' as _i14;
import '../domain/repository_contract/ProductsRepo.dart' as _i23;
import '../domain/repository_contract/auth_repository.dart' as _i6;
import '../domain/usecase/GetMostSellingProducts.dart' as _i33;
import '../domain/usecase/GetProductsUseCase.dart' as _i34;
import '../domain/usecase/add_to_cart_use_case.dart' as _i31;
import '../domain/usecase/get_brands_usecase.dart' as _i16;
import '../domain/usecase/get_categories_usecase.dart' as _i17;
import '../domain/usecase/login_use_case.dart' as _i19;
import '../domain/usecase/register_use_case.dart' as _i25;
import '../ui/auth/login/cubit/login_view_model.dart' as _i20;
import '../ui/auth/register/cubit/register_view_model.dart' as _i26;
import '../ui/home/categories_tab/categories_view_model.dart' as _i32;
import '../ui/home/home_screen_view_model.dart' as _i18;
import '../ui/home/home_tab/home_tab_view_model.dart' as _i35;
import '../ui/products_catalog/catalog_view_model.dart' as _i36;

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
    gh.factory<_i4.AuthRemoteDataSource>(
        () => _i5.AuthRemoteDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i6.AuthRepository>(
        () => _i7.AuthRepoImpl(gh<_i4.AuthRemoteDataSource>()));
    gh.factory<_i8.BrandsDataSource>(
        () => _i9.BrandsOnlineDataSource(gh<_i3.ApiManager>()));
    gh.factory<_i10.BrandsRepo>(
        () => _i11.BrandsRepoImpl(gh<_i8.BrandsDataSource>()));
    gh.factory<_i12.CategoriesDataSource>(
        () => _i13.CategoriesOnlineDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i14.CategoriesRepository>(
        () => _i15.CategoriesRepositoryImpl(gh<_i12.CategoriesDataSource>()));
    gh.factory<_i16.GetBrandsUsecase>(
        () => _i16.GetBrandsUsecase(gh<_i10.BrandsRepo>()));
    gh.factory<_i17.GetCategoriesUsecase>(
        () => _i17.GetCategoriesUsecase(gh<_i14.CategoriesRepository>()));
    gh.factory<_i18.HomeViewModel>(() => _i18.HomeViewModel());
    gh.factory<_i19.LoginUseCase>(
        () => _i19.LoginUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i20.LoginViewModel>(
        () => _i20.LoginViewModel(gh<_i19.LoginUseCase>()));
    gh.factory<_i21.ProductsDataSource>(
        () => _i22.ProductsOnlineDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i23.ProductsRepo>(
        () => _i24.ProductsRepoImpl(gh<_i21.ProductsDataSource>()));
    gh.factory<_i25.RegisterUseCase>(
        () => _i25.RegisterUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i26.RegisterViewModel>(
        () => _i26.RegisterViewModel(gh<_i25.RegisterUseCase>()));
    gh.factory<_i27.AddToCartDataSource>(
        () => _i28.AddToCartDataSourceImpl(apiManager: gh<_i3.ApiManager>()));
    gh.factory<_i29.AddToCartRepository>(() => _i30.AddToCartRepositoryImpl(
        addToCartDataSource: gh<_i27.AddToCartDataSource>()));
    gh.factory<_i31.AddToCartUseCase>(
        () => _i31.AddToCartUseCase(gh<_i29.AddToCartRepository>()));
    gh.factory<_i32.CategoriesViewModel>(
        () => _i32.CategoriesViewModel(gh<_i17.GetCategoriesUsecase>()));
    gh.factory<_i33.GetMostSellingProducts>(
        () => _i33.GetMostSellingProducts(gh<_i23.ProductsRepo>()));
    gh.factory<_i34.GetProductsUseCase>(
        () => _i34.GetProductsUseCase(gh<_i23.ProductsRepo>()));
    gh.factory<_i35.HomeTabViewModel>(() => _i35.HomeTabViewModel(
          gh<_i17.GetCategoriesUsecase>(),
          gh<_i16.GetBrandsUsecase>(),
          gh<_i33.GetMostSellingProducts>(),
        ));
    gh.factory<_i36.CatalogViewModel>(() => _i36.CatalogViewModel(
          gh<_i34.GetProductsUseCase>(),
          gh<_i31.AddToCartUseCase>(),
        ));
    return this;
  }
}
