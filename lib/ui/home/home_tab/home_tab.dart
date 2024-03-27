import 'package:ecommerce_app/domain/model/Category.dart';
import 'package:ecommerce_app/ui/common/ProductWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../di/di.dart';
import '../../../domain/model/Brand.dart';
import '../../../domain/model/Product.dart';
import 'HomeBrandWidget.dart';
import 'HomeCategoryWidget.dart';
import 'home_tab_view_model.dart';

class HomeTab extends StatefulWidget {
  static const String routeName = 'HomeTab';

  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  var viewModel = getIt<HomeTabViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.initPage();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeTabViewModel, HomeTabState>(
      bloc: viewModel,
      listenWhen: (previous, current) {
        if (current is Loading || current is Error) return true;
        return false;
      },
      builder: (BuildContext context, state) {
        if (state is Success) {
          return buildSuccessWidget(state.categories ?? [], state.brands ?? [],
              state.mostSellingProducts ?? [], context);
        }
        return const Center(child: CircularProgressIndicator());
      },
      listener: (BuildContext context, Object? state) {
        if (state is Loading) {
          //show loading
        }
        if (state is Error) {
          //show error
        }
      },
    );
  }
}

Widget buildSuccessWidget(List<Category> categories, List<Brand> brands,
    List<Product> mostSellingProducts, BuildContext context) {
  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox.fromSize(
              size: Size.fromHeight(
                MediaQuery.of(context).size.height * 0.34,
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Categories'),
                      Text('See all'),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Expanded(
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return HomeCategoryWidget(categories[index]);
                      },
                      itemCount: categories.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 8.h),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 160.h,
              width: double.infinity,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular Brands'),
                      Text('See all'),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return HomeBrandWidget(brands[index]);
                        },
                        itemCount: brands.length),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              width: double.infinity,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Most Selling Products'),
                      Text('See all'),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ProductWidget(
                            product: mostSellingProducts[index]);
                      },
                      itemCount: mostSellingProducts.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                        width: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
