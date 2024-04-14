import 'package:flutter/material.dart';

import '../cart/cart_screen.dart';
import '../products_catalog/cubit/catalog_view_model.dart';

class CustomSearchAppBar extends StatelessWidget {
  final bool isCartVisible;
  final bool isSearchVisible;
  final bool isAutomaticallyImplyLeading;

  final CatalogViewModel? catalogViewModel;

  const CustomSearchAppBar(
      {super.key,
      this.isCartVisible = true,
      this.isSearchVisible = true,
      this.isAutomaticallyImplyLeading = true,
      this.catalogViewModel});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: isAutomaticallyImplyLeading,
      title: Row(
        children: [
          isSearchVisible
              ? Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Search...',
                      prefixIcon: const Icon(Icons.search, size: 32),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      // Adjust padding
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 2.0), // Highlight on focus
                      ),
                    ),
                  ),
                )
              : const Expanded(
                  child: Text('Cart',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )),
                ),
          const SizedBox(
            width: 16,
          ),
          isCartVisible
              ? Badge(
                  label: Text(
                    catalogViewModel?.numOfCartItems.toString() ?? "",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.shopping_cart_sharp),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.pushNamed(context, CartScreen.routeName);
                    },
                  ),
                )
              : IconButton(
                  icon: const Icon(Icons.shopping_cart_sharp),
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, CartScreen.routeName);
                  },
                ),
        ],
      ),
    );
  }
}
