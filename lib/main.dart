import 'package:flutter/material.dart';
import 'package:first_app/page/home_page.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  static final String title='Todo App';

  Widget build(BuildContext context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
      title:title,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        scaffoldBackgroundColor: Color(0xFFf6f5ee),
      ),
    home: HomePage(),
  );
}

