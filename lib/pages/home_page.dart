import 'package:flutter/material.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState()=> _HomePageState();

}


class _HomePageState extends State<HomePage>{

  List todoList = [
    ["Make Tutorial", false, (p0)=>{}],
    ["Go to Gym", true, (p0)=>{}],
    ["Go to Kanpur", true, (p0)=>{}],
  ];

  void checkBoxChanged(bool? value, int index){
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(26, 100, 159, 1),
      appBar: AppBar(
        title: const Text("TO DO", style: TextStyle(fontSize: 25, color: Colors.white),),
        elevation: 0,
        backgroundColor:const Color.fromARGB(255, 0, 51, 91),
        
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder:(context, index) {
          return ToDoTile(
            taskName: todoList[index][0],
             taskCompleted: todoList[index][1],
              onChanged:(value) =>  checkBoxChanged(value,index)
              );
        },    
      ),
    );
  }
}