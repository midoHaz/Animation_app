import 'package:flutter/material.dart';

class AnimatedContainerJerry extends StatefulWidget {
  const AnimatedContainerJerry({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerJerry> createState() => _AnimatedContainerJerryState();
}

class _AnimatedContainerJerryState extends State<AnimatedContainerJerry> {
  double width = 100.0;
  double height = 100.0;
  Color color=Colors.grey;
  double radius=20.0;

  void _setAnimationValues(){
     setState(() {
        width = 200.0;
       height = 200.0;
        color=Colors.orange;
        radius=15.0;
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: GestureDetector(
              onTap: () {
                _setAnimationValues();
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(radius),
                ),
                child:Image.asset("assets/jerry.jpg"),
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
           width = 100.0;
           height = 100.0;
           color=Colors.grey;
           radius=12.0;
        });
      },child:const Icon(Icons.animation),),
    );
  }
}
