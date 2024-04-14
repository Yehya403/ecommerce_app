import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/di.dart';
import '../../domain/model/Category.dart';
import '../common/ProductWidget.dart';
import '../common/custom_search_app_bar.dart';
import 'cubit/catalog_states.dart';
import 'cubit/catalog_view_model.dart';

class ProductsCatalog extends StatefulWidget {
  const ProductsCatalog({super.key});

  static const String routeName = '/products_catalog';

  @override
  State<ProductsCatalog> createState() => _ProductsCatalogState();
}

class _ProductsCatalogState extends State<ProductsCatalog> {
  var viewModel = getIt<CatalogViewModel>();
  Category? _category;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _category = ModalRoute.of(context)?.settings.arguments as Category?;
    viewModel.loadProducts(category: _category);
  }

  void _retryLoadProducts() {
    viewModel.loadProducts(category: _category);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => viewModel,
        child: BlocBuilder<CatalogViewModel, CatalogState>(
          builder: (context, state) {
            switch (state.runtimeType) {
              case ProductsLoadingState:
                return const Center(child: CircularProgressIndicator());
              case ProductsSuccessState:
                final productsState = state as ProductsSuccessState;
                return Scaffold(
                  appBar: PreferredSize(
                    preferredSize: const Size.fromHeight(kToolbarHeight),
                    child: CustomSearchAppBar(catalogViewModel: viewModel),
                  ),
                  body: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 8 / 11,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return ProductWidget(
                            isAddedEnabled: true,
                            product: productsState.products![index]);
                      },
                      itemCount: productsState.products?.length ?? 0,
                    ),
                  ),
                );
              case ProductsErrorState:
                final errorState = state as ProductsErrorState;
                return Column(
                  children: [
                    ElevatedButton(
                      onPressed: _retryLoadProducts,
                      child: const Text('Retry'),
                    ),
                    Center(child: Text(errorState.message ?? "Error")),
                  ],
                );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
