import 'dart:convert';
import 'package:dictionary_apps/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
      home: KamusPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(iconTheme: IconThemeData(color: Colors.white)),
    ));

class KamusPage extends StatefulWidget {
  @override
  _KamusPageState createState() => _KamusPageState();
}

class _KamusPageState extends State<KamusPage> {
  List<Kamus> _list = [];
  List<Kamus> _search = [];
  var loading = false;
  Future<Null> fetchData() async {
    setState(() {
      loading = true;
    });
    _list.clear();
    final response = await http.get('http://192.168.0.114/kamus/getKamus.php');
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        for (Map i in data) {
          _list.add(Kamus.formJson(i));
          loading = false;
        }
      });
    }
  }

  TextEditingController controller = TextEditingController();
  onSearch(String text) async {
    _search.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    _list.forEach((f) {
      if (f.istilah_kamus.contains(text) ||
          f.id_kamus.toString().contains(text)) _search.add(f);
    });

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KAMUS ISTILAH DALAM ISLAM'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.teal,
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: TextField(
                    controller: controller,
                    onChanged: onSearch,
                    decoration: InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      controller.clear();
                      onSearch('');
                    },
                    icon: Icon(Icons.cancel),
                  ),
                ),
              ),
            ),
            loading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
                    child: _search.length != 0 || controller.text.isNotEmpty
                        ? ListView.builder(
                            itemCount: _search.length,
                            itemBuilder: (context, i) {
                              final b = _search[i];
                              return Container(
                                padding: EdgeInsets.all(5),
                                child: Card(
                                  color: Colors.white,
                                  child: ListTile(
                                    title: Text(
                                      b.istilah_kamus,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.blue),
                                    ),
                                    subtitle: Text(
                                      b.arti_kamus,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        : ListView.builder(
                            itemCount: _list.length,
                            itemBuilder: (context, i) {
                              final a = _list[i];
                              return Container(
                                padding: EdgeInsets.all(5),
                                child: Card(
                                  color: Colors.white,
                                  child: ListTile(
                                    title: Text(
                                      a.istilah_kamus,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.blue),
                                    ),
                                    subtitle: Text(
                                      a.arti_kamus,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              );
                            }),
                  )
          ],
        ),
      ),
    );
  }
}
