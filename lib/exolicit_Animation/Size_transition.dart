import 'package:flutter/material.dart';

class SizeTransitionEx extends StatefulWidget {
  const SizeTransitionEx({Key? key}) : super(key: key);

  @override
  State<SizeTransitionEx> createState() => _SizeTransitionExState();
}

class _SizeTransitionExState extends State<SizeTransitionEx> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(milliseconds: 500));
    _animation =Tween<double>(begin:0.0 ,end:1.0).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
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
      body: Center(
        child: GestureDetector(
          onTap: _startAnimation,
          child: Container(
            width: 250,
            height: 250,
            color: Colors.yellow,
            child: Center(
              child: SizeTransition(sizeFactor:_animation,child:
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.orange,
                  child: Image.asset("assets/jerry.jpg",width: 100,height: 100,),
                ),),
            ),
          ),
        ),
      ),
    );
  }
}
