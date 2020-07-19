import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class NewsTile extends StatefulWidget {
  @override
  _NewsTileState createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  List data;
  final String baseurl = "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=22b7a3f465fc492fb16a50b0c0a670b5";
  Future<String> makeRequest() async{
    var response = await http.get(
        Uri.encodeFull(baseurl),
        headers: {"Accept": "application/json"}
    );
    var extractData = jsonDecode(response.body);
    data = extractData["articles"];
    print(data[0]['author']);
  }
  @override
  void initState() {
    this.makeRequest();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data == null? 0:data.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
              padding: EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){},
                child: Container(
                  //child: Text(data[index]['author'] == null ? "Author not found" : data[index]['author']),
                  child: Column(
                  children: <Widget>[
                    Image.asset(data[index]['urlToImage'] == null ? "assets/1.png": data[index]['urlToImage'] ),
                    Text(data[index]['author'] == null ? "Title not found": data[index]['title']),
                    Text(data[index]['author'] == null ? "Author not found": data[index]['author']),
                  ],
                ),
                ),
              )
          );
        });
  }
}


