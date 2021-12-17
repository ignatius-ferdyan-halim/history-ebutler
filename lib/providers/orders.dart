import 'package:flutter/cupertino.dart';

import 'cart.dart';

class OrderItem {
  final String id;
  final int amount;
  final List<CartItem> products;
  final DateTime dateTime;
  bool status;

  OrderItem(
      {@required this.id,
      @required this.amount,
      @required this.products,
      @required this.dateTime,
      this.status});
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];
  List<OrderItem> get orders {
    return [..._orders];
  }

  int get itemCount {
    return _orders.length;
  }

  void addOrder(List<CartItem> cartProducts, int total) {
    _orders.insert(
      0,
      OrderItem(
          id: DateTime.now().toString(),
          amount: total,
          products: cartProducts,
          dateTime: DateTime.now(),
          status: false),
    );

    notifyListeners();
  }

  void clear() {
    _orders = [];
  }
}
