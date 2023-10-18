// import 'dart:ffi';

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 51, 91),
            borderRadius: BorderRadius.circular(12)),
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
    );
  }
}
