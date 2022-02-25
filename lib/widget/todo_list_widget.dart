import 'package:first_app/widget/todo_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:first_app/model/todo.dart';
import 'package:first_app/widget/todo_widget.dart';
import 'package:first_app/provider/todos.dart';

class TodoListWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return TodoWidget(
      todo: Todo(createdTime: DateTime.now(),
      title: 'Walk the dog',
      )
    );
  }
}