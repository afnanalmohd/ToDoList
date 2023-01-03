
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;

  /// funcation ///

  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFuncation;


  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFuncation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),

          children: [

            SlidableAction(
                onPressed: deleteFuncation,
                icon: Icons.delete,
                backgroundColor: Colors.red,
                borderRadius: BorderRadius.circular(16))
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              ///checkbox//
              Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  activeColor: Color(0XFFb39de4)),

              /// task name ///

              Text(taskName,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      decoration: taskCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none)),
            ],
          ),
          decoration: BoxDecoration(
              color: Color(0XFF8B73C1),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
