import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart.dart';

import '../constant.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    var cart = context.read<CartModle>();
    return Padding(
      padding: const EdgeInsets.only(left: 12,right: 12, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Consumer<CartModle>(
            builder: (context, value, child) {
              return Text(
                '\$${cart.totalPrice}',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                )),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('not support yet'),
                ),
              );
            },
            child: const Text(
              'Buy',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
