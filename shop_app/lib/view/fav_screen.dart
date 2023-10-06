import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constant.dart';
import '../route.dart';
import '../widgets/fav_list.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: const Text(
            'Favorite',
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
              child: FavList(),
            ),
          ],
        ));
  }
}
