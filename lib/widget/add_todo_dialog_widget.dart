import 'package:flutter/material.dart';
import 'package:first_app/widget/todo_form_widget.dart';
class AddTodoDialogWidget extends StatefulWidget{
  _AddTodoDialogWidgetState createState()=>_AddTodoDialogWidgetState();
}
class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget>{
  final _formkey=GlobalKey<FormState>();
  String title='';
  String description='';

  Widget build(BuildContext context)=>AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add Todo',
        ),
        const SizedBox(height:8),
        TodoFormWidget(
          onChangedTitle: (title)=>setState(()=>this.title=title),
          onChangedDescription: (description)=>setState(()=>this.description=description),
          onSavedTodo: () {}
        )
      ],
    ),
  );
}