import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/Services/auth.dart';
import '/widgets/products_grid.dart';
import '/providers/cart.dart';
import '/Screens/Home/cart_screen.dart';
import '/widgets/app_drawer.dart';
import '/widgets/badge.dart';
import '/Model/user.dart';
import '/Services/database.dart';

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({Key key}) : super(key: key);

  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<User>>.value(
      initialData: null,
      value: null,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MyShop'),
          actions: <Widget>[
            TextButton.icon(
              icon: const Icon(Icons.person, color: Colors.white),
              onPressed: () async {
                await _auth.signOut();
              },
              label: const Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Consumer<Cart>(
                builder: (_, cart, ch) => Badge(
                      child: ch,
                      value: cart.itemCount.toString(),
                    ),
                child: IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(CartScreen.routeName);
                  },
                ))
          ],
        ),
        drawer: const AppDrawer(),
        body: ProductsGrid(),
      ),
    );
  }
}
