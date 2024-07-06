import 'package:flutter/material.dart';

class FadeTransitionEx extends StatefulWidget {
  const FadeTransitionEx({Key? key}) : super(key: key);

  @override
  State<FadeTransitionEx> createState() => _State();
}

class _State extends State<FadeTransitionEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startFade() {
    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.teal),
            width: 300,
            height: 300,
            child: const Center(
              child: Text(
                "Fade Transition Ex",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _startFade,
          child: const Icon(
            Icons.play_arrow_outlined,
            color: Colors.teal,
          )),
    );
  }
}
