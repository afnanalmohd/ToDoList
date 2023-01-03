
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_button.dart';

class DialogeBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

   DialogeBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0XFFCCC7D6),
      content: Container(
        height: 130,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // GET USER INPUT
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Pleas Add your List ",
                  hintStyle: TextStyle(fontSize: 15, color: Colors.white)),
            ),

            //button


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                My_Button(text: "Save", onPressed: onSave),
                const SizedBox(width: 4),
                My_Button(text: "Cancel", onPressed:onCancel)

              ],
            )
          ],
        ),
      ),
    );
  }
}
