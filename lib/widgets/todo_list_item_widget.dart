import 'package:flutter/material.dart';

class TodoListItemWidget extends StatelessWidget {
  const TodoListItemWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: true,
        onChanged: (value){
            debugPrint(value.toString());
        },
        
      ),
      title: Text('Go to gym'),
    );
  }
}