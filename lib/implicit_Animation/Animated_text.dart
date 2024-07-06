import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({Key? key}) : super(key: key);

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  double _size = 30.0;
  Color _color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            curve: Curves.bounceInOut,
            duration: const Duration(milliseconds: 300),
            style: TextStyle(fontSize: _size, color: _color),
            child: const Text("Hello "),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _size = 45.0;
                      _color = Colors.orange;
                    });
                  },
                  icon: const Icon(Icons.add_circle_outlined)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _size = 30.0;
                      _color = Colors.grey;
                    });
                  },
                  icon: const Icon(Icons.remove_circle)),
            ],
          )
        ],
      )),
    );
  }
}
