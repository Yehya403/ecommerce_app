import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/model/Category.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget(this.category, {super.key});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageBuilder: (context, imageProvider) {
            return Container(
              width: 90,
              height: 90,
              decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: imageProvider, fit: BoxFit.fill)),
            );
          },
          imageUrl: category.image ?? "",
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          width: 90,
          height: 90,
        ),
        Text(category.name ?? "",maxLines: 1),
      ],
    );
  }
}
