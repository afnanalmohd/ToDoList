
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todolist/utli/dilog_box.dart';
import 'package:todolist/utli/todo_tile.dart';



/// logic of code here //
///
///
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // text controller //



  final controller = TextEditingController();
  int selectindex = 0;

  /// list for todo task ///

  List toDoList = [
    ["Go to doctor", false],
    ["Go to school", true],
    ["play piano", false] ];

  /// checkbox was tapped////
  ///
  void checkBoxChanged(bool? value, index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });

    // Navigator.of(context).pop();
  }

  ////save task////

  void saveNewTask() {
    setState(() {
      toDoList.add([controller.text, false]);
      controller.clear();
      Navigator.of(context).pop();
    });
  }

  //// create new task ///

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogeBox(
            controller: controller,
             onSave: saveNewTask,

           // onSave: saveNewTask.() => Navigator.of(context).pop(),
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  /// create delete task///

  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0XFF8B73C1),
        onPressed: createNewTask,
        child: Icon(
          Icons.add,
        ),
      ),



      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80, right: 300, bottom: 15),
                child: Text(
                  "Today",
                  style: TextStyle(fontSize: 30, color: Color(0XFF8B73C1)),
                ),
              ),
              Container(
                height: 490,
                width: 600,

                ///list view builder ////
                child: ListView.builder(
                  itemCount: toDoList.length,
                  itemBuilder: (context, index) {
                    return ToDoTile(
                      taskName: toDoList[index][0],
                      taskCompleted: toDoList[index][1],
                      onChanged: (value) => checkBoxChanged(value, index),
                      deleteFuncation: (context) => deleteTask(index),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200, bottom: 50 ),
                child: content(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// lottie //
Widget content() {
  return Container(
    child: Lottie.network(
        'https://assets6.lottiefiles.com/packages/lf20_g9gACcXlja.json'),
  );



}
