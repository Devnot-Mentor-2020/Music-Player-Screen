import 'package:flutter/material.dart';
import 'package:music_screen/core/extensions/content_extensions.dart';

class StackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: context.width,
          height: context.height*0.41,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/background.png"),fit: BoxFit.cover)
          ),
        ),
        Positioned(
            top: context.height*0.18  ,
            left: context.width*0.08,
            child: columnInStack(context)
        )
      ],
    );
  }
  Column  columnInStack(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(context.width*0.1),
              border: Border.all(color: Colors.white,width: 1.5)
          ),
          child: Padding(
            padding:EdgeInsets.all(context.width * 0.02),
            child: Text("Featured",style: TextStyle(color: Colors.white,),),
          ),
        ),
        Text("Funk Gets", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
        Text("A Groove", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
        Row(
          children: <Widget>[
            Text("Feel the Bass",style: TextStyle(color: Colors.white),),
            SizedBox(width: context.width*0.05,),
            Text("1 Hour",style: TextStyle(color: Colors.white),)
          ],
        ),
      ],
    );
  }
}
