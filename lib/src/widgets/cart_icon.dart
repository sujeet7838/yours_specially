import 'package:flutter/material.dart';
import 'package:yourspecially/src/routing/routing_config.dart';

import '../features/cart/cart_screen.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushNamed(context, cartScreen);
      },
      icon: const Icon(
        Icons.shopping_cart,
        color: Colors.white,
        size: 22,
      ),
    );
  }
}
