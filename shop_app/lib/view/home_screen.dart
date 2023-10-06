import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_app/constant.dart';

import '../route.dart';
import '../widgets/list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: primaryColor,
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            actions: [
              IconButton(
                onPressed: () => context.go(cartRoute),
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () => context.go(favRoute),
                icon: const Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListItem(
                index: index,
              );
            },
          )),
        ],
      ),
    );
  }
}
