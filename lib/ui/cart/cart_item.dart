import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/model/Cart.dart';
import 'cubit/cart_screen_view_model.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.product});

  final CartProduct product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      width: double.infinity,
      child: Row(
        children: [
          Image.network(
            product.product?.imageCover ?? "",
            fit: BoxFit.cover,
            height: 100.h,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        product.product?.title ?? "",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        CartScreenViewModel.get(context).removeFromCart(
                            productId: product.product?.id ?? "");
                      },
                      icon: const Icon(Icons.delete, color: Colors.red),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text('Price: ${product.price ?? ""}'),
                    const Spacer(),
                    Container(
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              int counter = product.count?.toInt() ?? 0;
                              counter--;
                              CartScreenViewModel.get(context)
                                  .updateCountInCart(
                                      productId: product.product?.id ?? "",
                                      count: counter);
                              if (counter == 0) {
                                CartScreenViewModel.get(context).removeFromCart(
                                    productId: product.product?.id ?? "");
                              }
                            },
                            icon: Icon(
                              Icons.remove_circle,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                          Text(
                            product.count.toString() ?? "",
                            style: const TextStyle(color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {
                              int counter = product.count?.toInt() ?? 0;
                              counter++;
                              CartScreenViewModel.get(context)
                                  .updateCountInCart(
                                      productId: product.product?.id ?? "",
                                      count: counter);
                            },
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
