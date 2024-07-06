import 'package:flutter/material.dart';

class PositionedDirectionalTransitionEx extends StatefulWidget {
  const PositionedDirectionalTransitionEx({Key? key}) : super(key: key);

  @override
  State<PositionedDirectionalTransitionEx> createState() =>
      _PositionedDirectionalTransitionExState();
}

class _PositionedDirectionalTransitionExState
    extends State<PositionedDirectionalTransitionEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    _animation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(100, 100, 0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller.reset();
    _controller.forward();
  }

  void _reverseAnimation() {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context,child)=> PositionedDirectional(
              top: _animation.value.top,
              bottom: _animation.value.bottom,
              start: _animation.value.left,
              end: _animation.value.right,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.teal,
                child: const FlutterLogo(size: 100,),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _startAnimation, child:const Icon(Icons.play_arrow_outlined)),
                ElevatedButton(onPressed: _reverseAnimation, child:const Icon(Icons.settings_backup_restore_sharp)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
