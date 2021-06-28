// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class Gridview extends StatefulWidget {

  @override
  _GridviewState createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          itemcard("Iphone 12", 'images/iphone.jpg'),
          itemcard("Macbook Pro", 'images/macbookpro.jpg'),
          itemcard("Macbook Air", 'images/macbookair.jpg'),
          itemcard("Backlit Keyboard", 'images/backlitkb.jpg'),
          itemcard("Mercedes", 'images/mercedes.jpg'),
          itemcard("Note 20", 'images/note20.jpg'),
          itemcard("Roadster", 'images/roadster.jpg'),
          itemcard("Royal Enfield", 'images/royalenf.jpg'),
          itemcard("Mutton", 'images/mutton.jpg'),
          itemcard("Gaming PC", 'images/gamingpc.jpg'),
        ],
      ),
    );
  }
}

Widget itemcard(var itemname, imageurl) {
  return Container(
    child: Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      elevation: 4,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imageurl,
              width: double.maxFinite,
            ),
          ),
          Text(
            itemname,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 7,
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.readOnly(
                  initialRating: 4.5,
                  isHalfAllowed: true,
                  halfFilledIcon: Icons.star_half,
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  filledColor: Colors.amber,
                  halfFilledColor: Colors.amberAccent,
                  emptyColor: Colors.transparent,
                  size: 14.0,
                ),
                Text("4.5(23 Reviews)", style: TextStyle(fontSize: 10),),
              ],
            ),
          )
        ],
      ),
    ),
  );
}