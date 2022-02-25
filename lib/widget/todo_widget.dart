import 'package:flutter/material.dart';
import 'package:first_app/model/todo.dart';

class TodoWidget extends StatelessWidget{
  final Todo todo;
  const TodoWidget({
    required this.todo,
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context)=> Container(
    padding: EdgeInsets.all(20),
    child: Row(
    children: [
      Checkbox(
        activeColor: Theme.of(context).primaryColor,
        checkColor:  Colors.white,
        value: todo.isDone,
        onChanged: (_){},
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                todo.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
              if(todo.description.isNotEmpty)
              Container(
                margin: EdgeInsets.only(top:4),
                child: Text(
                  todo.description,
                  style: TextStyle(fontSize: 20,height: 1.5),
                )
              )
            ],
          )
        )
    ],
  )
  );
  
    
}