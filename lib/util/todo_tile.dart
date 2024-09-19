// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext) delete;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged,
      required this.delete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children : [
            SlidableAction(
              onPressed: delete,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade400,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)
              ),),
          ]),
        child: Container(
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 51, 91),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12)
              ), ),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.white,
                checkColor: Colors.black,
              ),
              Text(
                taskName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    decoration: (taskCompleted==true)
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
