import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/di.dart';
import '../../domain/model/Category.dart';
import '../common/ProductWidget.dart';
import 'catalog_view_model.dart';

class ProductsCatalog extends StatefulWidget {
  const ProductsCatalog({super.key});

  static const String routeName = '/products_catalog';

  @override
  State<ProductsCatalog> createState() => _ProductsCatalogState();
}

class _ProductsCatalogState extends State<ProductsCatalog> {
  var viewModel = getIt<CatalogViewModel>();

  @override
  Widget build(BuildContext context) {
    var category = ModalRoute.of(context)?.settings.arguments as Category?;
    viewModel.loadProducts(category: category);
    return Scaffold(
      body: BlocBuilder<CatalogViewModel, CatalogState>(
        bloc: viewModel,
        builder: (context, state) {
          switch (state) {
            case LoadingState():
              return const Center(child: CircularProgressIndicator());
            case SuccessState():
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 8 / 10,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return ProductWidget(state.products![index]);
                  },
                  itemCount: state.products?.length ?? 0,
                ),
              );
            case ErrorState():
              return Column(
                children: [
                  ElevatedButton(
                      onPressed: viewModel.loadProducts(category: category),
                      child: const Text('Retry')),
                  Center(child: Text(state.message ?? "Error")),
                ],
              );
          }
        },
      ),
    );
  }
}
