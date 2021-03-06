import 'package:flutter/material.dart';
import 'package:music_screen/core/extensions/content_extensions.dart';

class CurrentMusicPlayer extends StatelessWidget {
  final String songName;
  final String artistName;
  final String imagePath;

  const CurrentMusicPlayer(
      {Key key, @required this.songName, @required this.artistName, @required this.imagePath})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(songName,style: TextStyle(fontSize: 12),),
      subtitle: Text(artistName,style: TextStyle(fontSize: 12)),
      leading: Container(
        width: context.width*0.1,
        height: context.width*0.1,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover),
        ),
        child: Center(
            child: Icon(Icons.pause, color: Colors.white,)
        ),
      ),
      trailing: Icon(Icons.keyboard_arrow_up),
    );
  }
}
