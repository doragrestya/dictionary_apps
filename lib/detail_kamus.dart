import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailKamus extends StatelessWidget {
  final list;
  int index;
  DetailKamus({this.list, this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Detail Kamus', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      centerTitle: true,
      backgroundColor: Colors.deepOrange,
      ),

      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Card(
                  color: Colors.green,
                  child: Text('${list[index]['istilah_kamus']}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),

                ),
              ),
              Card(
                color: Colors.pinkAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${list[index]['arti_kamus']}', textAlign: TextAlign.justify,),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
