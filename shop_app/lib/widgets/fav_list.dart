import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart.dart';

class FavList extends StatelessWidget {
  const FavList({super.key});

  @override
  Widget build(BuildContext context) {
    var fav = context.watch<CartModle>();
    return ListView.builder(
      itemCount: fav.favItems.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          trailing: IconButton(
            onPressed: () {
              fav.removeFav(fav.favItems[index]);
            },
            icon: const Icon(
              Icons.remove_circle,
            ),
          ),
          title: Text(
            fav.favItems[index].name,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        );
      },
    );
  }
}
