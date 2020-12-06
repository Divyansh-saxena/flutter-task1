import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//var ic = songlistreport();

class Audio extends StatefulWidget {
  @override
  _AudioState createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = new AudioPlayer();
    var ap = new AudioCache(fixedPlayer: audioPlayer);
    var check = 0;
    var song = ["Dil Bechara", "Shape Of You", "Kabhi Jo Baadal Barse"];
    var artist = ["A.R. Rahman", "Ed Shreen","ARIJIT SINGH"];
    var simage = [
      "images/dil01.jpg",
      "images/635646-shape-of-you-ed-sheeran.jpg",
      "images/Kabhi joh.jpg"
    ];
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


    return  Container(
       alignment: Alignment.center,
        child: Column(children: <Widget>[
      Container(
        width: double.infinity,
        height: 300,
        margin: EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 10),
        decoration: BoxDecoration(
            image: DecorationImage(
         // image: AssetImage(simage[ic]),
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
    ]));
  }
}
