import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/catalog.dart';

import 'add_button.dart';
import 'fav_button.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    var item = context.read<CatalogModel>().getId(index);
    return Container(
      margin: const EdgeInsets.all(12),
      height: 70,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(12), boxShadow: [
        BoxShadow(
          color: Colors.grey[200]!,
          offset: const Offset(-3, 0),
          blurRadius: 5,
        ),
        const BoxShadow(
          color: Colors.white,
        ),
      ]),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: item.color,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            item.name,
            style: const TextStyle(fontSize: 20),
          ),
          const Spacer(),
          FavButton(
            item: item,
          ),
          AddButton(
            item: item,
          ),
        ],
      ),
    );
  }
}
