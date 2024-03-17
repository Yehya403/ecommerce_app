import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../domain/model/Brand.dart';

class HomeBrandWidget extends StatelessWidget {
   const HomeBrandWidget(this.brand,{super.key});
final Brand brand;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageBuilder: (context, imageProvider) {
            return Container(
              width: 75,
              height: 75,
              decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: imageProvider, fit: BoxFit.fill)),
            );
          },
          imageUrl: brand.image ?? "",
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          width: 75,
          height: 75,
        ),
    Text(brand.name ?? ""),
      ],
    );
  }
}
