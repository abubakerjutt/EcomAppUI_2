// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecomm_app_ui/griditems.dart';
import 'package:ecomm_app_ui/itemslider.dart';
import 'package:ecomm_app_ui/catslider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Ecom App UI',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 5, right: 5, top: 7),
          child: Column(
            children: [
              tilet("Items", "View More"),
              Itemslider(),
              tilet("More Categories", ""),
              Catslider(),
              tilet("Popular Items", "View More"),
              Gridview(),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 47,
        width: 47,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.purple,
          child: Icon(
            Icons.search,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
            color: Colors.purple,
            iconSize: 28,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
            color: Colors.grey,
            iconSize: 28,
          ),
          SizedBox(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_shopping_cart_sharp),
            color: Colors.grey,
            iconSize: 28,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
            color: Colors.grey,
            iconSize: 28,
          ),
        ],
      ),
    );
  }
}

Widget tilet(var title, viewmore) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        title,
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      ),
      Text(
        viewmore,
        style: TextStyle(color: Colors.purple),
      ),
    ],
  );
}
