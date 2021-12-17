import 'package:cloud_firestore/cloud_firestore.dart';

import '/providers/product.dart';

class ProductDatabase {
  final String title;
  ProductDatabase({this.title});

  final CollectionReference cartCollection =
      Firestore.instance.collection('product');

  List<Product> _productsSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Product(
        id: doc.data['id'] ?? 'id',
        price: doc.data['price'] ?? 0,
        description: doc.data['description'] ?? 'desc',
        imageUrl: doc.data['url'] ?? 'url',
        title: doc.data['name'] ?? 'title',
      );
    }).toList();
  }

  Stream<List<Product>> get productsStream {
    return cartCollection.snapshots().map(_productsSnapshot);
  }
}
