import 'dart:convert';
import 'package:dictionary_apps/detail_kamus.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class KamusPage extends StatefulWidget {
  @override
  _KamusPageState createState() => _KamusPageState();
}

class _KamusPageState extends State<KamusPage> {
  final GlobalKey<RefreshIndicatorState> _refreshKey =
      GlobalKey<RefreshIndicatorState>();

  Future<List> getKamus() async {
    final response = await http.get("http://192.168.0.114/kamus/getKamus.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('KAMUS ISLAM', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: FutureBuilder(
          future: getKamus(),
          builder: (context, result) {
            if (result.hasError) print(result.error);
            return result.hasData
                ? ListKamus(list: result.data)
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ));
  }
}

class ListKamus extends StatelessWidget {
  final list;
  ListKamus({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailKamus(list:list, index: index)));
              },
              child: Card(
                color: Colors.redAccent,
                child: ListTile(
                  title: Text('${list[index]['istilah_kamus']}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                  subtitle: Text('${list[index]['arti_kamus']}', maxLines: 2, style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          );
        });
  }
}
