import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items {
    return [..._items];
  }

  void addProduct(
      String id, String title, String description, int price, String imageUrl) {
    _items.insert(
      0,
      Product(
        id: id,
        title: title,
        description: description,
        price: price,
        imageUrl: imageUrl,
      ),
    );
  }

  void clear() {
    _items = [];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
