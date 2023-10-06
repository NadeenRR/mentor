import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart.dart';

import '../models/item.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    var isInCart =
        context.select<CartModle, bool>((cart) => cart.items.contains(item));
    return TextButton(
      onPressed: isInCart
          ? null
          : () {
              context.read<CartModle>().add(item);
            },
      child: isInCart
          ? const Icon(Icons.check)
          : const Text(
              'Add',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
    );
  }
}
