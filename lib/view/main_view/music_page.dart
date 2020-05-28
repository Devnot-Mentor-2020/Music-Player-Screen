import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_screen/view/playlist_view/current_music_player.dart';
import 'package:music_screen/view/playlist_view/listview.dart';
import 'package:music_screen/view/stack_view/stack_bar.dart';
import 'package:music_screen/view/tab/bottom_tab_bar.dart';
class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomTabBar(),
      body:  Row(
        children: [
          Spacer(),
          Expanded(flex: 18,
              child: buildColumn(context)
          ),
          Spacer(),
       ],
      ),
    );
  }

  Column buildColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height*0.05,),
        StackBar(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("For You",style: TextStyle(fontSize: 25),),
        ),
        MyListView(),
        Divider(thickness: 2,),
        CurrentMusicPlayer(songName: "Tunes For The Anxious", artistName: "David Manson - The ways to live",imagePath: "assets/images/iconImage.png",),
      ]  ,
    );
  }

}
