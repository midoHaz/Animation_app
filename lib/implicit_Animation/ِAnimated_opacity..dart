import 'package:flutter/material.dart';

class AnimatedOpacityEx extends StatefulWidget {
  const AnimatedOpacityEx({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityEx> createState() => _AnimatedOpacityExState();
}

class _AnimatedOpacityExState extends State<AnimatedOpacityEx> {
  bool _isVisable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            AnimatedOpacity(
              opacity: _isVisable ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInBack,
              child: const Text(
                "Tom & jerry",
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            AnimatedOpacity(
              opacity: _isVisable ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1500),
              curve: Curves.bounceInOut,
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset("assets/jerry.jpg")),
            ),
            AnimatedOpacity(
              opacity: _isVisable ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 2500),
              curve: Curves.bounceIn,
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset("assets/tommy.jpg")),
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isVisable = !_isVisable;
          });
        },
        child: Icon(_isVisable
            ? Icons.visibility_outlined
            : Icons.visibility_off_sharp),
      ),
    );
  }
}
