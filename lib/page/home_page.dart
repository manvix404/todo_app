import 'package:flutter/material.dart';
import 'package:first_app/main.dart';

class HomePage extends StatefulWidget{
  _HomePageState createState()=> _HomePageState();
}
class _HomePageState extends State<HomePage>{
  Widget build(BuildContext context){
    final tabs=[
      Container(),
      Container(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
      ),
    );
  }
}