import 'package:flutter/material.dart';

class AnimatedPositionEx extends StatefulWidget {
  const AnimatedPositionEx({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionEx> createState() => _AnimatedPositionExState();
}

class _AnimatedPositionExState extends State<AnimatedPositionEx> {
  bool eat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          children: [
            AnimatedPositioned(
                top:0,
                left: 0,
                duration: const Duration(seconds: 1),
                child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset("assets/cheese.jpg"))),
            AnimatedPositioned(
                top: 0 ,
                left: eat ? MediaQuery.of(context).size.width * 0.66 : 0,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInCirc,
                child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset("assets/jerry.jpg"))),
            AnimatedPositioned(
                top: eat ? MediaQuery.of(context).size.height * 0.4 :0,
                left:eat ? MediaQuery.of(context).size.width * 0.5: 0,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInCirc,
                child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset("assets/dog.jpg"))),
            AnimatedPositioned(
                top: eat ? ( MediaQuery.of(context).size.height * 0.8): 0,
                left:0,
                duration: const Duration(seconds: 1),
                child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset("assets/tommy.jpg")))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            eat =! eat;
          });
        },
        child:
        Icon(eat ? Icons.location_on_sharp: Icons.location_off_sharp),
      ),
    );
  }
}
