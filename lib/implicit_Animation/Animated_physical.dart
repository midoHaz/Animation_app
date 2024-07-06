import 'package:flutter/material.dart';

class AnimatedPhysical extends StatefulWidget {
  const AnimatedPhysical({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysical> createState() => _AnimatedPhysicalState();
}

class _AnimatedPhysicalState extends State<AnimatedPhysical> {
  bool _ispressed = false;

  _toggleElevation() {
    setState(() {
      _ispressed = !_ispressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: GestureDetector(
        onTap: _toggleElevation,
        child: AnimatedPhysicalModel(
              shape: BoxShape.rectangle,
              elevation: _ispressed ? 90.0 : 0.0,
              color: Colors.grey,
              shadowColor: Colors.blueGrey,
              duration: const Duration(milliseconds: 500),
              curve: Curves.bounceInOut,
              child: SizedBox(
                width: 200,
                height: 200,
                child: _ispressed ?Image.asset("assets/tommy.jpg") :Image.asset("assets/jerry.jpg",fit: BoxFit.cover,),
              )),
      ),
          )),
    );
  }
}
