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
import '../data/dataSourceContract/AddToCartDataSource.dart' as _i34;
import '../data/dataSourceContract/CartDataSource.dart' as _i12;
import '../data/dataSourceContract/ProductsDataSource.dart' as _i26;
import '../data/dataSourceContract/auth_remote_data_source.dart' as _i4;
import '../data/dataSourceContract/brands_data_source.dart' as _i8;
import '../data/dataSourceContract/categories_data_source.dart' as _i16;
import '../data/dataSourceImpl/BrandsOnlineDataSource.dart' as _i9;
import '../data/dataSourceImpl/CategoriesOnlineDataSourceImpl.dart' as _i17;
import '../data/dataSourceImpl/ProductsOnlineDataSourceImpl.dart' as _i27;
import '../data/dataSourceImpl/add_to_cart_data_source_impl.dart' as _i35;
import '../data/dataSourceImpl/auth_remote_data_source_impl.dart' as _i5;
import '../data/dataSourceImpl/cart_data_source_impl.dart' as _i13;
import '../data/repositoryImpl/BrandsRepoImpl.dart' as _i11;
import '../data/repositoryImpl/CategoriesRepositoryImpl.dart' as _i19;
import '../data/repositoryImpl/ProductsRepoImpl.dart' as _i29;
import '../data/repositoryImpl/add_to_cart_repository_impl.dart' as _i37;
import '../data/repositoryImpl/auth_repo_impl.dart' as _i7;
import '../data/repositoryImpl/cart_repository_impl.dart' as _i15;
import '../domain/repository_contract/AddToCartRepository.dart' as _i36;
import '../domain/repository_contract/BrandsRepo.dart' as _i10;
import '../domain/repository_contract/CartRepository.dart' as _i14;
import '../domain/repository_contract/CategoriesRepository.dart' as _i18;
import '../domain/repository_contract/ProductsRepo.dart' as _i28;
import '../domain/repository_contract/auth_repository.dart' as _i6;
import '../domain/usecase/GetMostSellingProducts.dart' as _i41;
import '../domain/usecase/GetProductsUseCase.dart' as _i42;
import '../domain/usecase/add_to_cart_use_case.dart' as _i38;
import '../domain/usecase/get_brands_usecase.dart' as _i20;
import '../domain/usecase/get_cart_use_case.dart' as _i21;
import '../domain/usecase/get_categories_usecase.dart' as _i22;
import '../domain/usecase/login_use_case.dart' as _i24;
import '../domain/usecase/register_use_case.dart' as _i30;
import '../domain/usecase/remove_from_cart_use_case.dart' as _i32;
import '../domain/usecase/update_count_in_cart_use_case.dart' as _i33;
import '../ui/auth/login/cubit/login_view_model.dart' as _i25;
import '../ui/auth/register/cubit/register_view_model.dart' as _i31;
import '../ui/cart/cubit/cart_screen_view_model.dart' as _i39;
import '../ui/home/categories_tab/categories_view_model.dart' as _i40;
import '../ui/home/cubit/home_screen_view_model.dart' as _i23;
import '../ui/home/home_tab/home_tab_view_model.dart' as _i43;
import '../ui/products_catalog/cubit/catalog_view_model.dart' as _i44;

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
    gh.factory<_i12.CartDataSource>(
        () => _i13.CartDataSourceImpl(apiManager: gh<_i3.ApiManager>()));
    gh.factory<_i14.CartRepository>(() =>
        _i15.CartRepositoryImpl(cartDataSource: gh<_i12.CartDataSource>()));
    gh.factory<_i16.CategoriesDataSource>(
        () => _i17.CategoriesOnlineDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i18.CategoriesRepository>(
        () => _i19.CategoriesRepositoryImpl(gh<_i16.CategoriesDataSource>()));
    gh.factory<_i20.GetBrandsUsecase>(
        () => _i20.GetBrandsUsecase(gh<_i10.BrandsRepo>()));
    gh.factory<_i21.GetCartUseCase>(
        () => _i21.GetCartUseCase(gh<_i14.CartRepository>()));
    gh.factory<_i22.GetCategoriesUsecase>(
        () => _i22.GetCategoriesUsecase(gh<_i18.CategoriesRepository>()));
    gh.factory<_i23.HomeViewModel>(() => _i23.HomeViewModel());
    gh.factory<_i24.LoginUseCase>(
        () => _i24.LoginUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i25.LoginViewModel>(
        () => _i25.LoginViewModel(gh<_i24.LoginUseCase>()));
    gh.factory<_i26.ProductsDataSource>(
        () => _i27.ProductsOnlineDataSourceImpl(gh<_i3.ApiManager>()));
    gh.factory<_i28.ProductsRepo>(
        () => _i29.ProductsRepoImpl(gh<_i26.ProductsDataSource>()));
    gh.factory<_i30.RegisterUseCase>(
        () => _i30.RegisterUseCase(gh<_i6.AuthRepository>()));
    gh.factory<_i31.RegisterViewModel>(
        () => _i31.RegisterViewModel(gh<_i30.RegisterUseCase>()));
    gh.factory<_i32.RemoveFromCartUseCase>(
        () => _i32.RemoveFromCartUseCase(gh<_i14.CartRepository>()));
    gh.factory<_i33.UpdateCountInCartUseCase>(
        () => _i33.UpdateCountInCartUseCase(gh<_i14.CartRepository>()));
    gh.factory<_i34.AddToCartDataSource>(
        () => _i35.AddToCartDataSourceImpl(apiManager: gh<_i3.ApiManager>()));
    gh.factory<_i36.AddToCartRepository>(() => _i37.AddToCartRepositoryImpl(
        addToCartDataSource: gh<_i34.AddToCartDataSource>()));
    gh.factory<_i38.AddToCartUseCase>(
        () => _i38.AddToCartUseCase(gh<_i36.AddToCartRepository>()));
    gh.factory<_i39.CartScreenViewModel>(() => _i39.CartScreenViewModel(
          getCartUseCase: gh<_i21.GetCartUseCase>(),
          removeFromCartUseCase: gh<_i32.RemoveFromCartUseCase>(),
          updateCountInCartUseCase: gh<_i33.UpdateCountInCartUseCase>(),
        ));
    gh.factory<_i40.CategoriesViewModel>(
        () => _i40.CategoriesViewModel(gh<_i22.GetCategoriesUsecase>()));
    gh.factory<_i41.GetMostSellingProducts>(
        () => _i41.GetMostSellingProducts(gh<_i28.ProductsRepo>()));
    gh.factory<_i42.GetProductsUseCase>(
        () => _i42.GetProductsUseCase(gh<_i28.ProductsRepo>()));
    gh.factory<_i43.HomeTabViewModel>(() => _i43.HomeTabViewModel(
          gh<_i22.GetCategoriesUsecase>(),
          gh<_i20.GetBrandsUsecase>(),
          gh<_i41.GetMostSellingProducts>(),
        ));
    gh.factory<_i44.CatalogViewModel>(() => _i44.CatalogViewModel(
          gh<_i42.GetProductsUseCase>(),
          gh<_i38.AddToCartUseCase>(),
        ));
    return this;
  }
}
