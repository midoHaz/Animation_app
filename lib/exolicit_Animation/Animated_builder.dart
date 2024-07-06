import 'dart:math' show pi;

import 'package:flutter/material.dart';

class AnimationBuilderEx extends StatefulWidget {
  const AnimationBuilderEx({Key? key}) : super(key: key);

  @override
  State<AnimationBuilderEx> createState() => _AnimationBuilderExState();
}

class _AnimationBuilderExState extends State<AnimationBuilderEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) => Transform.rotate(
                  angle: _controller.value * 2 * pi,
                  child: Container(
                    width: 250,
                    height: 250,
                    color: Colors.transparent,
                    child: const FlutterLogo(
                      size: 70,
                      textColor: Colors.blueGrey,
                    ),
                  ),
                )),
      ),
    );
  }
}
