import 'package:flutter/material.dart';
import 'screens/NewsTile.dart';


void main(){
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
 class HomePage extends StatefulWidget {
   @override
   _HomePageState createState() => _HomePageState();
 }

 class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('News App'),
         bottom:  TabBar(
             controller: controller,
             tabs: <Widget>[
               Tab(text: 'Covid'),
               Tab(text: 'Sports'),
               Tab(text: 'lifestyle',)
             ]),
       ),
       body: TabBarView(
           controller: controller,
           children: <Widget>[
             NewsTile(),
             NewsTile(),
             NewsTile()
           ]),
     );
   }
 }

