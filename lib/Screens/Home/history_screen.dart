import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import '/Model/user.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '/Services/history.dart';
import '/widgets/app_drawer.dart';

class HistoryScreen extends StatefulWidget {
  static const routeName = '/historyscreen';

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    String uid = user.uid;

    Timestamp newTime;
    DateTime newDate;

    List date = [];
    List roomNumber = [];
    List title = [];
    List quantity = [];
    List price = [];
    List total = [];
    List totalPrice = [];

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: Text('History'),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream:
            Firestore.instance.collection('History').document(uid).snapshots(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          var doc = snapshot.data;
          newDate = null;
          date = [];
          roomNumber = [];
          title = [];
          quantity = [];
          price = [];
          total = [];
          totalPrice = [];

          // for (var i in doc.data.values) {
          //   newTime = i['Time'];
          //   newDate = newTime.toDate();

          //   date.insert(0, DateFormat('dd/MM/yyyy - kk:mm').format(newDate));
          // }

          for (var i in doc.data.values) {
            int index = 0;
            title.insert(index, i['Item']);
            newTime = i['Time'];
            newDate = newTime.toDate();
            date.insert(
                index, DateFormat('dd/MM/yyyy - kk:mm').format(newDate));
            roomNumber.insert(index, i['Room Number']);
            quantity.insert(index, i['Quantity']);
            price.insert(index, i['Price']);
            total.insert(index, i['Total']);
            totalPrice.insert(index, i['Total Price']);
            index++;
          }
          // for (int i = 0; i < doc.data.length; i++) {
          //   title.insert(i, doc.data.toString());
          // }
          // for (int i = 0; i < doc.data.length; i++) {
          //   for (var y in doc.data.values) {
          //     title.insert(i, y['Item']);
          //     newTime = y['Time'];
          //     newDate = newTime.toDate();
          //     date.insert(i, DateFormat('dd/MM/yyyy - kk:mm').format(newDate));
          //     roomNumber.insert(i, y['Room Number']);
          //     quantity.insert(i, y['Quantity']);
          //     price.insert(i, y['Price']);
          //     total.insert(i, y['Total']);
          //     totalPrice.insert(i, y['Total Price']);
          //   }
          // }
          return ListView(
            children: [
              for (int i = 0; i < date.length; i++)
                Text(
                  roomNumber[i].toString(),
                ),
              for (int i = 0; i < date.length; i++)
                Text(
                  title[i].toString(),
                ),
              for (int i = 0; i < date.length; i++)
                Text(
                  quantity[i].toString(),
                ),
              for (int i = 0; i < date.length; i++)
                Text(
                  price[i].toString(),
                ),
              for (int i = 0; i < date.length; i++)
                Text(
                  total[i].toString(),
                ),
              for (int i = 0; i < date.length; i++)
                Text(
                  totalPrice[i].toString(),
                ),
              for (int i = 0; i < date.length; i++)
                Text(
                  date[i],
                ),
            ],
          );
        },
      ),
    );
  }
}
