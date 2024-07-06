import 'package:flutter/material.dart';

class AnimatedPositionDirectionalEx extends StatefulWidget {
  const AnimatedPositionDirectionalEx({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionDirectionalEx> createState() =>
      _AnimatedPositionDirectionalExState();
}

class _AnimatedPositionDirectionalExState extends State<AnimatedPositionDirectionalEx> {
  double _start=0;
  double _top=0;

  moveTop(){
    setState(() {
      _top -=50;
      if(_top<0){
        _top=0;
      }
    });}
    moveBottom(){
      setState(() {
        _top +=50;
        if(_top>MediaQuery.of(context).size.height-200){
          _top=MediaQuery.of(context).size.height-200;
        }
      });
  }
  moveRight(){
    setState(() {
      _start +=50;
      if(_start>MediaQuery.of(context).size.width*.66){
        _start =MediaQuery.of(context).size.width*.66;
      }
    });
  }
  moveLeft(){
    setState(() {
      _start -=50;
      if(_start<0){
        _start=0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Stack(
            children: [
              AnimatedPositionedDirectional(
                  start: _start,
                  top: _top,
                  curve: Curves.bounceIn,
                  duration: const Duration(milliseconds: 500),
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset("assets/jerry.jpg"),
                  )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed:moveTop, child:const Icon(Icons.arrow_upward)),
                    ElevatedButton(onPressed: moveBottom, child:const Icon(Icons.arrow_downward)),
                    ElevatedButton(onPressed: moveRight, child:const Icon(Icons.keyboard_arrow_right_sharp)),
                    ElevatedButton(onPressed: moveLeft, child:const Icon(Icons.keyboard_arrow_left_sharp))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
