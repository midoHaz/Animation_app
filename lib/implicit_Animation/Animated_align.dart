import 'package:flutter/material.dart';

class AnimatedAlignTommy extends StatefulWidget {
  const AnimatedAlignTommy({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignTommy> createState() => _AnimatedAlignTommyState();

}

class _AnimatedAlignTommyState extends State<AnimatedAlignTommy> {
  int gerryPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedAlign(alignment: getNextAlign(gerryPosition+1),
              duration: const Duration(milliseconds: 300),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.transparent,
                child: Image.asset("assets/jerry.jpg"),
              ),),
            AnimatedAlign(alignment: getNextAlign(gerryPosition),
              duration: const Duration(milliseconds: 500),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.transparent,
                child: Image.asset("assets/tommy.jpg"),
              ),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          gerryPosition++;
        });
      },child:const  Icon(Icons.animation),),
    );
  }

  Alignment getNextAlign(int jerry) {
    switch (jerry) {
      case 1:
        return Alignment.bottomCenter;
      case 2:
        return Alignment.centerRight;
      case 3:
        return Alignment.bottomLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.bottomRight;
      case 6:
        return Alignment.topLeft;
      case 7:
        return Alignment.centerLeft;
      case 8:
        return Alignment.topCenter;
      default:
        gerryPosition=0;
        return Alignment.topRight;
    }
  }
}
