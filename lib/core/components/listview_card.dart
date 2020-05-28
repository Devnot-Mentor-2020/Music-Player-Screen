import 'package:flutter/material.dart';
import 'package:music_screen/core/extensions/content_extensions.dart';

class MyListViewCard extends StatelessWidget {
  final String mainText;
  final String subText;
  final String decorationImagePath;

  const MyListViewCard(
      {Key key, this.mainText, this.subText, this.decorationImagePath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: context.height*0.15,
          width: context.width*0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(context.width * 0.02),
            image: DecorationImage(image: AssetImage(decorationImagePath),fit:BoxFit.cover),
          ),
        ),
        Text(mainText,style: TextStyle(color: Colors.grey.shade800),),
        Text(subText,style: TextStyle(color: Colors.grey,fontSize: 10),),
      ],
    );
  }
}
