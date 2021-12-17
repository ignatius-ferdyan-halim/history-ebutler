import 'package:ebutler/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({Key key}) : super(key: key);
  static const routeName = '/Information';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Information"),
        ),
        drawer: const AppDrawer(),
        body: Center(
          child: ListView(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Outlet Location",
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text("1st Floor\t\t\t\t\t\t\t\t\t"),
                      SizedBox(
                          height: 80,
                          child: VerticalDivider(
                            color: Colors.black,
                          )),
                      Text(
                          "TULIP Café \nInoue Restaurant \nCattleya Restaurant\nFiducia Bar "),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text("5th Floor\t\t\t\t\t\t\t"),
                      SizedBox(
                          height: 100,
                          child: VerticalDivider(
                            color: Colors.black,
                          )),
                      Text(
                          "Mawar Ballroom \nAnggrek Ballroom \nMelati Ballroom\nTulip Ballroom\nGYM \nSwimming Pool"),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text("9th Floor\t\t\t\t\t\t\t\t\t"),
                      SizedBox(
                          height: 80,
                          child: VerticalDivider(
                            color: Colors.black,
                          )),
                      Text("Anggrek Executive  \nLounge \nOffice Area"),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text("11th Floor\t\t"),
                      SizedBox(
                          height: 80,
                          child: VerticalDivider(color: Colors.black)),
                      Text("\tFu Qi Restaurant"),
                    ],
                  ),
                  const Divider(color: Colors.white),
                  const Text(
                    "Hotel Information",
                    style: TextStyle(fontSize: 30),
                  ),
                  const Divider(color: Colors.white),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text("Tulip Café (8 AM- 9 PM)"),
                      Text("Anggrek Executive Lounge (6 AM- 9 PM)"),
                      Text("Inoue Restaurant: "),
                      Text(
                          "06.00 – 09.00 (breakfast)\n10.00 – 12.00 (Brunch)\n12.00 – 15.00 (Lunch)\n15.00 – 17.00 (Tea Time)\n18.00 – 20.00 (Dinner)\n21.00 – 01.00 (Supper)"),
                      Text("Fu qi Restaurant (8 AM - 9 PM)"),
                      Text("Cattleya Restaurant (6 AM - 9 PM)"),
                      Text("Fiducia Bar (3 PM - 11 PM)"),
                      Text("GYM open 24 hours (6 AM- 7 PM for PT)"),
                      Text("Swimming Pool (6 AM- 9 PM)")
                    ],
                  ),
                  const Divider(color: Colors.white),
                  const Text(
                    "Extensions",
                    style: TextStyle(fontSize: 30),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text("Front Desk\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"),
                      SizedBox(
                          height: 20,
                          child: VerticalDivider(color: Colors.black)),
                      Text("Ext: 007"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text("House Kepping\t\t\t\t\t\t\t\t"),
                      SizedBox(
                          height: 20,
                          child: VerticalDivider(color: Colors.black)),
                      Text("Ext: 008"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text("In Room Dining\t\t\t\t\t\t\t\t"),
                      SizedBox(
                          height: 20,
                          child: VerticalDivider(color: Colors.black)),
                      Text("Ext: 009"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text("Swimming Pool\t\t\t\t\t\t "),
                      SizedBox(
                          height: 20,
                          child:
                              VerticalDivider(color: Colors.black, width: 20)),
                      Text("Ext: 010"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                          "Gym\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"),
                      SizedBox(
                          height: 20,
                          child: VerticalDivider(color: Colors.black)),
                      Text("Ext: 011"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text("Telephone Operator"),
                      SizedBox(
                          height: 20,
                          child: VerticalDivider(color: Colors.black)),
                      Text("Ext: 012"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
