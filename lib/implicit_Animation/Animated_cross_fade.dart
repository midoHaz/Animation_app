import 'package:flutter/material.dart';

class AnimatedCrossFadeEx extends StatefulWidget {
  const AnimatedCrossFadeEx({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeEx> createState() => _AnimatedCrossFadeExState();
}

class _AnimatedCrossFadeExState extends State<AnimatedCrossFadeEx> {
  bool _isClicked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: GestureDetector(
        onTap: () {
          setState(() {
            _isClicked = !_isClicked;
          });
        },
        child: Center(
          child: AnimatedCrossFade(
              firstChild: SizedBox(
                width: 120,
                height: 120,
                child: Image.asset("assets/tommy.jpg"),
              ),
              secondChild: SizedBox(
                width: 120,
                height: 120,
                child: Image.asset("assets/jerry.jpg"),
              ),
              crossFadeState: _isClicked
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1)),
        ),
      )),
    );
  }
}
