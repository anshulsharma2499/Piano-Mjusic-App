import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MusicApp());

class MusicApp extends StatelessWidget {

  void playSound(int soundNumber)
  {
    final player =AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded button1({Color color,int soundNumber })
  {
    return  Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        } ,
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                button1(color:Colors.red ,soundNumber: 1),
                button1(color:Colors.blue ,soundNumber: 2),
                button1(color:Colors.green ,soundNumber: 3),
                button1(color:Colors.orange ,soundNumber: 4),
                button1(color:Colors.yellow ,soundNumber: 5),
                button1(color:Colors.teal ,soundNumber: 6),
                button1(color:Colors.greenAccent ,soundNumber: 7),
              ],
            ),
        ),
      ),
    );
  }
}
