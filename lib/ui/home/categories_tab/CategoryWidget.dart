import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/ui/products_catalog/products_catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/model/Category.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({this.category, super.key});

  final Category? category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(ProductsCatalog.routeName, arguments: category);
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).primaryColor.withOpacity(0.3),
                  width: 2,
                ),
              ),
              child: CachedNetworkImage(
                imageUrl: category?.image ?? "",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                width: 100.w,
                height: 100.h,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            category?.name ?? "",
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
