import 'package:flutter/material.dart';
import 'package:first_app/page/home_page.dart';
import 'package:first_app/provider/todos.dart';
import 'package:provider/provider.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  static final String title='Todo App';

  Widget build(BuildContext context)=>ChangeNotifierProvider(
    create:(context)=> TodosProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title:title,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        scaffoldBackgroundColor: Color(0xFFf6f5ee),
      ),
      home: HomePage(),
    )
  );
  
}

