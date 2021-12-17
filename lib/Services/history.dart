import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import '/providers/orders.dart';
import '/providers/cart.dart';

//database.dart sama ini jadi setdata ga pake update data lagi

class History {
  final String uid;

  History({this.uid});

  final CollectionReference historyCollection =
      Firestore.instance.collection('History');

  DateTime index = DateTime.now();

  Future setHistory() async {
    return await historyCollection.document('1').setData({});
  }

  Future updateHistory(String itemTitle, int quantity, int price,
      int roomNumber, String id, int amount, int total) async {
    Map<String, Object> history = {
      'Room Number': roomNumber,
      'Item Id': id,
      'Item': itemTitle,
      'Price': price,
      'Quantity': quantity,
      'Total': total,
      'Total Price': amount,
      'Time': DateTime.now()
    };
    return await historyCollection
        .document(uid)
        .setData({'$index': history}, merge: true);
  }

  // Future updateStatus(bool status) async {
  //   return await historyCollection.document(uid).updateData({'Status': true});
  // }

  // List<OrderItem> _historySnapshot(QuerySnapshot snapshot) {
  //   return snapshot.documents.map((doc) {
  //     return OrderItem(
  //       id: doc.data['Id'] ?? 'id',
  //       amount: doc.data['Total'] ?? 0,
  //       products: doc.data['Products'] ?? 'list',
  //       dateTime: doc.data['Date'] ?? 'date',
  //       status: doc.data['Status'] ?? 'status',
  //     );
  //   }).toList();
  // }

  // Stream<List<OrderItem>> get historyStream {
  //   return historyCollection.snapshots().map(_historySnapshot);
  // }
}
