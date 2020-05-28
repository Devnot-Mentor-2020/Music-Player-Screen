import 'package:flutter/material.dart';
class StackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.41,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/background.png"),fit: BoxFit.cover)
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height*0.18  ,
            left: MediaQuery.of(context).size.width*0.08,
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
              borderRadius:BorderRadius.circular(15),
              border: Border.all(color: Colors.white,width: 1.5)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0 ),
            child: Text("Featured",style: TextStyle(color: Colors.white,),),
          ),
        ),
        Text("Funk Gets", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
        Text("A Groove", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
        Row(
          children: <Widget>[
            Text("Feel the Bass",style: TextStyle(color: Colors.white),),
            SizedBox(width: MediaQuery.of(context).size.width*0.05,),
            Text("1 Hour",style: TextStyle(color: Colors.white),)
          ],
        ),
      ],
    );
  }
}
