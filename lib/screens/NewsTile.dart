import 'package:flutter/material.dart';

class NewsTile extends StatefulWidget {
  @override
  _NewsTileState createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  var newsList = [
    {
      "name": "A",
      "image":"assets/1.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/2.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/3.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/4.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/5.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/6.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/7.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/8.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/9.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/10.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/11.jpg" ,
      "location": "Delhi",
    },
    {
      "name": "A",
      "image": "assets/12.jpg" ,
      "location": "Delhi",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (BuildContext context, int index){
          return SingleProd(
            prod_name: newsList[index]['name'],
            prod_image: newsList[index]['image'],
            prod_location: newsList[index]['location'],
          );
        });
  }
}

class SingleProd extends StatelessWidget {
  final prod_name;
  final prod_image;
  final prod_location;

  SingleProd({this.prod_name,this.prod_location, this.prod_image});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image(image: prod_image),
          Text(prod_name),
          Text(prod_location)
        ],
      ),
    );
  }
}

