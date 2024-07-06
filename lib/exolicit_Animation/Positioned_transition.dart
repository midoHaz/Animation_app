import 'package:flutter/material.dart';

class PositionedTransitionEx extends StatefulWidget {
  const PositionedTransitionEx({Key? key}) : super(key: key);

  @override
  State<PositionedTransitionEx> createState() => _PositionedTransitionExState();
}

class _PositionedTransitionExState extends State<PositionedTransitionEx>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _jerryAnimation;
  late Animation<RelativeRect> _tommyAnimation;
  late Animation<RelativeRect> _dogAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _jerryAnimation = RelativeRectTween(
        begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
        end: const RelativeRect.fromLTRB(250, 250, 0, 0)).animate(_controller);
    _tommyAnimation = RelativeRectTween(
        begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
        end: const RelativeRect.fromLTRB(150, 150, 0, 0)).animate(_controller);
    _dogAnimation = RelativeRectTween(
        begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
        end: const RelativeRect.fromLTRB(50, 50, 0, 0)).animate(_controller);
  }
  void _startAnimation(){
    _controller.reset();
    _controller.forward();
  }
  void _reverseAnimation(){
    _controller.reverse();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PositionedTransition(rect: _dogAnimation, child: Container(
            width: 100,
            height: 100,
            child: Image.asset("assets/dog.jpg",fit: BoxFit.fill,),
          )),
          PositionedTransition(rect: _tommyAnimation, child: Container(
            width: 100,
            height: 100,
            child: Image.asset("assets/tommy.jpg",fit: BoxFit.fill,),
          )),
          PositionedTransition(rect: _jerryAnimation, child: Container(
            width: 100,
            height: 100,
            child: Image.asset("assets/jerry.jpg",fit: BoxFit.fill,),
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _startAnimation, child: const Icon(Icons.start)),
                ElevatedButton(onPressed: _reverseAnimation, child: const Icon(Icons.back_hand_outlined)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
