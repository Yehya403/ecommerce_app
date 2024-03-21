import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/model/Product.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(this.product, {super.key});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 191.w,
      height: 237.h,
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
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Reviews: (${product.ratingsAverage ?? 0})'),
                  const Icon(Icons.star, color: Colors.orange),
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
