import 'item.dart';

class CatalogModel {
  List<String> itemsName = [
    'Baked',
    'Cereals',
    'Dairy',
    'Edible',
    'Edible',
    'Legumes',
    'Meat',
    'cake',
    'carrots',
    'cabbage'
  ];

  Item getId(int id) {
    return Item(itemsName[id % itemsName.length], id);
  }
}
