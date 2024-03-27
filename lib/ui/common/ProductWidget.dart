import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/ui/products_catalog/catalog_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/model/Product.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  final bool isAddedEnabled;

  const ProductWidget(
      {super.key, required this.product, this.isAddedEnabled = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 237.h,
      width: 191.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.fromBorderSide(BorderSide(
              color: Theme.of(context).colorScheme.primary, width: 2))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16), topLeft: Radius.circular(16)),
              child: CachedNetworkImage(
                imageBuilder: (context, imageProvider) {
                  return Container(
                    width: 191.w,
                    height: 128.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.fill)),
                  );
                },
                imageUrl: product.imageCover ?? "",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                width: 191.w,
                height: 128.h,
              ),
            ),
            Text(
              '${product.title}\n\n' ?? "",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Expanded(
              child: Row(
                children: [
                  Text(product.price?.toString() ?? ""),
                  const SizedBox(
                    width: 16,
                  ),
                  Visibility(
                      visible: product.price?.toString() != null,
                      child: Text(
                        product.price?.toString() ?? "",
                        style: const TextStyle(
                            decoration: TextDecoration.lineThrough),
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '(${product.ratingsAverage ?? 0})',
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Icon(Icons.star, color: Colors.orange),
                  ],
                ),
                Row(
                  children: [
                    if (isAddedEnabled)
                      Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: BoxShape.circle),
                        child: GestureDetector(
                          onTap: () {
                            CatalogViewModel.get(context)
                                .addToCart(productId: product.id ?? "");
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 32.sp,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
