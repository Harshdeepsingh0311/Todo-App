import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List todoList = [];

  final _todoBox = Hive.box('todoBox');

  void createInitialData(){
    todoList = [
      ["Organise Yourself", true],
      ["Make a todo List", false]
      
    ];
  }

  void loadData(){
    todoList = _todoBox.get("TODOLIST");

  }

  void updateDatabase(){
    _todoBox.put("TODOLIST", todoList);
  }

}