import 'package:flutter/material.dart';
import 'package:riverpod_todo/widgets/title.widget.dart';
import 'package:riverpod_todo/widgets/todo_list_item_widget.dart';
import 'package:riverpod_todo/widgets/toolbar_widget.dart';
class TodoApp extends StatelessWidget {
   TodoApp({Key key}) : super(key: key);
  final newTodoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          TitleWidget(),
          TextField(
            controller: newTodoController,
            decoration: InputDecoration(labelText: 'What will you do today?'),
            onSubmitted: (newTodo){
              debugPrint('add this $newTodo');
            },
          ),
          SizedBox(height: 20,),
          ToolBarWidget(),
          TodoListItemWidget(),
        ],
      ),
    );
  }
}