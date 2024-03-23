import 'package:flutter/material.dart';

class CustomSearchAppBar extends StatelessWidget {
  const CustomSearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'Search...',
              prefixIcon: const Icon(Icons.search, size: 32),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              // Adjust padding
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.white, width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 2.0), // Highlight on focus
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart_sharp),
          color: Theme.of(context).primaryColor,
          onPressed: () {},
        ),
      ],
    );
  }
}
