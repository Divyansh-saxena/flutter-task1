import 'package:flutter/material.dart';
import 'package:musicandvideoapp/SongsList.dart';
import 'package:musicandvideoapp/Video.dart';
import 'Audio.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "List",
    routes: {
      "/": (context) => Audio(),
      "Player": (context) => Auduioinside(),
      "List": (context) => SongList(),
    },
      );
  }
}

/*
class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

// ignore: camel_case_types
class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(children: <Widget>[
      Container(
        alignment: Alignment.center,
        color: Colors.amber,
        margin: EdgeInsets.all(50),
        width: double.infinity,
        height: 120,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           // FlatButton(onPressed: () {  }, child: ),
          ],
        ),
      )
    ]));
  }
}

 home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Music App'),
          bottom: TabBar(tabs: <Widget>[
            Tab(text: "Audio Player"),
            Tab(text: "Video Player"),
            //Tab(text: "Test list"),
          ]),
        ),
        body: TabBarView(
          children: [
            Audio(),
            SongList(),
            //VIdeo01()
          ],
        ),*/