import 'package:flutter/material.dart';
 
    var i =0;
    indexcheck(indexval){
       i =indexval;
    }

    songlistreport(){
      return i;
    }
class SongList extends StatefulWidget {
  @override
  _SongListState createState() => _SongListState();
}

// ignore: camel_case_types
class _SongListState extends State<SongList> {
  @override
  Widget build(BuildContext context) {
    var song = ["Dil Bechara", "Shape Of You", "Kabhi Jo Baadal Barse"];
    var artist = ["A.R. Rahman", "Ed Shreen","ARIJIT SINGH"];
    var simage = [
      "images/dil01.jpg",
      "images/635646-shape-of-you-ed-sheeran.jpg",
      "images/Kabhi joh.jpg"
    ];
// Kabhi Jo Baadal Barse  >> ARIJIT SINGH

    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.music_note_sharp), title: Text("Music App"),),
       body:  
              ListView(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                
                children: <Widget>[
                  //SONG 01
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "Player");
                      indexcheck(0);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 2.5),
                      color: Colors.grey[350],
                      height: 100,
                      child: Row(children: <Widget>[
                        Container(
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(simage[0]),
                              fit: BoxFit.fill,
                            ))),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.all(5),
                                  child: Text(song[0],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25))),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(artist[0],
                                      style: TextStyle(fontSize: 15))),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "Player");
                          indexcheck(1);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 2.5),
                      color: Colors.grey[350],
                      height: 100,
                      child: Row(children: <Widget>[
                        Container(
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(simage[1]),
                              fit: BoxFit.fill,
                            ))),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.all(5),
                                  child: Text(song[1],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25))),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(artist[1],
                                      style: TextStyle(fontSize: 15))),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
           );
  }
}
