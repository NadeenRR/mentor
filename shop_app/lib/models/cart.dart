import 'package:flutter/material.dart';
import 'package:shop_app/models/catalog.dart';
import 'item.dart';

class CartModle extends ChangeNotifier {
  late CatalogModel catalogModel;
  final List<int> listItem = [];
  final List<int> favList = [];

  CatalogModel get catalog => catalogModel;

  set catalog(CatalogModel catalog) {
    catalogModel = catalog;
    notifyListeners();
  }

  List<Item> get items => listItem.map((id) {
        return catalogModel.getId(id);
      }).toList();

  List<Item> get favItems => favList.map((id) {
        return catalogModel.getId(id);
      }).toList();

  int get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    listItem.add(item.id);
    notifyListeners();
  }

  void addFav(Item item) {
    favList.add(item.id);
    notifyListeners();
  }

  void remove(Item item) {
    listItem.remove(item.id);
    notifyListeners();
  }

  void removeFav(Item item) {
    favList.remove(item.id);
    notifyListeners();
  }
}
