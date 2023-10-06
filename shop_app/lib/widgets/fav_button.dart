import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart.dart';

import '../models/item.dart';

class FavButton extends StatelessWidget {
  const FavButton({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    var isFavCart =
        context.select<CartModle, bool>((cart) => cart.favItems.contains(item));
    return TextButton(
      onPressed: isFavCart
          ? null
          : () {
              context.read<CartModle>().addFav(item);
            },
      child: isFavCart
          ? const Icon(
              Icons.favorite,
              color: Colors.red,
            )
          : const Icon(
              Icons.favorite_border,
              color: Colors.black12,
            ),
    );
  }
}
