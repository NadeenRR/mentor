import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    var cart = context.watch<CartModle>();
    return ListView.builder(
      itemCount: cart.items.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: const Icon(Icons.check_rounded),
          trailing: IconButton(
            onPressed: () {
              cart.remove(cart.items[index]);
            },
            icon: const Icon(Icons.remove_circle),
          ),
          title: Text(
            cart.items[index].name,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        );
      },
    );
  }
}
