import 'package:flutter/material.dart';

class Catslider extends StatefulWidget {
  @override
  _CatsliderState createState() => _CatsliderState();
}

class _CatsliderState extends State<Catslider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 60.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          category(Icons.shopping_bag_outlined, "Clothes", "5 Items"),
          category(Icons.bolt, "Electronics", "20 Items"),
          category(Icons.chair, "Households", "9 Items"),
          category(Icons.bolt, "Appliances", "5 Items"),
          category(Icons.double_arrow, "Others", "15 Items"),
        ],
      ),
    );
  }
}

Widget category(var icon, titles, items){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 3,
          offset: Offset(0, 3),
        )
      ],
    ),
    margin: EdgeInsets.only(right: 10),
    width: 180.0,
    child: ListTile(
      leading: Icon(icon, size: 35, color: Colors.purple,),
      title: Text(titles, style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text(items),
    ),
  );
}