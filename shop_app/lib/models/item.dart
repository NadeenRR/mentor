import 'package:flutter/material.dart';

class Item {
  final String name;
  final Color color;
  final int id;
  final int price = 50;

  Item(
    this.name,
    this.id,
  ) : color = Colors.primaries[id % Colors.primaries.length];

  @override
  bool operator ==(Object other) => other is Item && other.id == id;

  @override
  int get hashCode => id;
}
