import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function deleteCallBack;
  TasksTile(
      {this.isChecked,
      this.taskTitle,
      this.checkBoxCallBack,
      this.deleteCallBack});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: deleteCallBack,
      child: ListTile(
          title: Text(
            taskTitle,
            style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: checkBoxCallBack,
          )),
    );
  }
}
