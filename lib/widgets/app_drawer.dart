import 'package:ebutler/Screens/Home/history_screen.dart';
import 'package:ebutler/Screens/Home/information.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/Screens/Home/order_screen.dart';
import '/providers/orders.dart';
import '/Services/history.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final order = Provider.of<Orders>(context);
    bool statusCheck = true;
    for (int i = 0; i < order.itemCount; i++) {
      if (order.orders.toList()[i].status == false) {
        statusCheck = false;
        break;
      }
    }
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: const Text('Menus'),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Shop'),
            // onTap: () {
            //   Navigator.of(context).pushReplacementNamed('/');
            // },
            onTap: statusCheck == true
                ? () {
                    Navigator.of(context).pushReplacementNamed('/');
                  }
                : () {
                    Navigator.of(context)
                        .pushReplacementNamed(OrderScreen.routeName);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Finish your order first, by clicking the delivery button',
                          textAlign: TextAlign.center,
                        ),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Orders'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(OrderScreen.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('History'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(HistoryScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Information'),
            onTap: () {
              Navigator.of(context).pushNamed(Information.routeName);
            },
          ),
        ],
      ),
    );
  }
}
