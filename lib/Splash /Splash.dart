import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:todolist/Home.dart';
import 'package:flutter/cupertino.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  State<Splash> createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      // body: content(),
      body: SingleChildScrollView(

        child: Column(
          children: [
            Container(
              height: 100,
            ),
            Container(child: content()),

            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "To Do List ",
                style: TextStyle(
                    color: Color(0XFF8B73C1),
                    fontSize: 40,
                    fontStyle: FontStyle.normal),
              ),
            ),
            Text(
              "The Best Way to Mange Your Life ",
              style: TextStyle(
                color: Color(0XFF808080),
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200, left: 150),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Respond to button press
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  icon: Icon(Icons.arrow_back , size: 30),
                  label: Text("Let's Start Now"),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0XFF8B73C1),
                      // alignment:Alignment.topRight
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  // lottie //
  Widget content() {
    return Container(
      child: Container(
        child: Lottie.network(
            'https://assets8.lottiefiles.com/packages/lf20_5zdc36oh.json'),
      ),
    );
  }
}
