import 'package:flutter/material.dart';

class RotationTransitionEx extends StatefulWidget {
  const RotationTransitionEx({Key? key}) : super(key: key);

  @override
  State<RotationTransitionEx> createState() => _RotationTransitionExState();
}

class _RotationTransitionExState extends State<RotationTransitionEx> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 4));
    _animation=Tween<double>(begin: 0,end: 7).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  void _startAnimation(){
    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: RotationTransition(
          turns:_animation,
          child:const  FlutterLogo(
            size: 50,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _startAnimation,child:const  Icon(Icons.rotate_right),),
    );
  }
}
