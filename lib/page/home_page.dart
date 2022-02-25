import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/widget/add_todo_dialog_widget.dart';
import 'package:first_app/widget/todo_list_widget.dart';

class HomePage extends StatefulWidget{
  _HomePageState createState()=> _HomePageState();
}
class _HomePageState extends State<HomePage>{
  int selectedIndex=0;
  Widget build(BuildContext context){
    final tabs=[
      TodoListWidget(),
      Container(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.8),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index)=>setState(() {
          selectedIndex=index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done,size:25),
            label: 'Completed',
          ),
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.lightBlue,
        onPressed: ()=>
        {showDialog(
          context: context,
          builder: (BuildContext context)=>AddTodoDialogWidget(),
          barrierDismissible: false,
        ),
        },
        child: Icon(Icons.add),
        tooltip: 'Add',

      ),
    );
  }
}