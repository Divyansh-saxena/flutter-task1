import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Auduioinside extends StatefulWidget {
  @override
  _AuduioinsideState createState() => _AuduioinsideState();
}

class _AuduioinsideState extends State<Auduioinside> {
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = new AudioPlayer();
    var ap = new AudioCache(fixedPlayer: audioPlayer);
    var check = 0;
    //var song;
    var song=["Dil Bechara","asasasas"];
   // var artist=["A.R. Rahman"];
  //  var simage=["images/dil01.jpg"]
    play(songn) async {
      ap.clearCache();
      if (check == 0 || check ==2 ) {
        await ap.play('$songn.mp3');
        check = 1;
      }
    }

    pause() {
      if (check == 1) {
        check = 0;
        audioPlayer.pause();
      }
    }

    stop() {
      if (check == 1) {
        check = 2;
        audioPlayer.stop();
      }
    }


    return Scaffold(appBar:AppBar(
      leading: FlatButton(onPressed:(){Navigator.pop(context);},child: Icon(Icons.home)),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.favorite), onPressed: null),
          IconButton(icon: Icon(Icons.headset), onPressed: null),
        ],
        title: Text(song[0],),),
     body: Container(
       alignment: Alignment.center,
        child: Column(children: <Widget>[
      Container(
        width: double.infinity,
        height: 300,
        margin: EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 10),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/dil01.jpg"),
          fit: BoxFit.fill,
        )),
      ),

      Container(
        child: Text(""),
      ),

      Container(
        //alignment: Alignment.center,
        //color: Colors.amber,
        margin: EdgeInsets.all(0),
        width: double.infinity,
        height: 100,
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed:(){play('dil');},
              child: Icon(
                Icons.play_arrow,
                size: 70.0,
                //color: Colors.white,
              ),
            ),
            FlatButton(
                onPressed: pause,
                child: Icon(
                  Icons.pause,
                  size: 70.0,
                )),
            FlatButton(
              onPressed: stop,
              child: Icon(
                Icons.stop,
                size: 70.0,
              ),
            )
          ],
        ),
      )
    ])));
  }
}
