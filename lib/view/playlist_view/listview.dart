import 'package:flutter/material.dart';
import 'package:music_screen/core/components/listview_card.dart';
class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.23,
      padding: const EdgeInsets.only(left: 15),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyListViewCard(
            mainText: "Feeling Artsy",
            subText: "2 hours",
            decorationImagePath: "assets/images/scrollable1.png",
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: MyListViewCard(
              mainText: "Feel like Dancing",
              subText: "35 mins",
              decorationImagePath: "assets/images/scrollable2.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: MyListViewCard(
              mainText: "Somewhere Dark",
              subText: "3 hours",
              decorationImagePath: "assets/images/scrollable3.png",
            ),
          ),
        ],
      ),
    );
  }
}
