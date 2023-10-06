import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_app/route.dart';

import '../constant.dart';
import '../widgets/cart_list.dart';
import '../widgets/cart_total.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: const Text(
            'Cart',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          leading: IconButton(
            onPressed: () => context.pushReplacement(homeRoute),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        body: const Column(
          children: [
            Expanded(
              child: CartList(),
            ),
            CartTotal(),
          ],
        ));
  }
}
