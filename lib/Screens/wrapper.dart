import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/Model/user.dart';
import '/Screens/Authenticate/authenticate.dart';
import '/Screens/Home/products_overview_screen.dart';
import 'package:provider/provider.dart';
import '/Services/productdatabase.dart';
import '/providers/product.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null) {
      return const Authenticate();
    } else {
      return StreamProvider<List<Product>>.value(
        child: const ProductsOverviewScreen(),
        value: ProductDatabase().productsStream,
        initialData: [],
      );
    }
  }
}
