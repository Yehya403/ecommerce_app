import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/di.dart';
import 'CategoryWidget.dart';
import 'categories_view_model.dart';

class CategoriesTab extends StatefulWidget {
  const CategoriesTab({super.key});

  @override
  State<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends State<CategoriesTab> {
  var viewModel = getIt<CategoriesViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.loadCategories();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesViewModel, CategoriesState>(
      bloc: viewModel,
      builder: (context, state) {
        switch (state) {
          case LoadingState():
            return const Center(child: CircularProgressIndicator());
          case SuccessState():
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (context, index) {
                return CategoryWidget(category: state.categories![index]);
              },
              itemCount: state.categories?.length ?? 0,
            );
          case ErrorState():
            return Column(
              children: [
                ElevatedButton(
                    onPressed: viewModel.loadCategories(),
                    child: const Text('Retry')),
                Center(child: Text(state.message ?? "Error")),
              ],
            );
        }
      },
    );
  }
}
