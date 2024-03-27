import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/model/Category.dart';
import '../../products_catalog/products_catalog.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget(this.category, {super.key});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(ProductsCatalog.routeName, arguments: category);
      },
      child: Column(
        children: [
          CachedNetworkImage(
            imageBuilder: (context, imageProvider) {
              return Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: imageProvider, fit: BoxFit.fill)),
              );
            },
            imageUrl: category.image ?? "",
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            width: 100.w,
            height: 100.h,
          ),
          Text(
            category.name ?? "",
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
