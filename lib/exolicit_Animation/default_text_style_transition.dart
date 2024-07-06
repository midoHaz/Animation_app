import 'package:flutter/material.dart';

class DefaultTextTransitionEx extends StatefulWidget {
  const DefaultTextTransitionEx({Key? key}) : super(key: key);

  @override
  State<DefaultTextTransitionEx> createState() =>
      _DefaultTextTransitionExState();
}

class _DefaultTextTransitionExState extends State<DefaultTextTransitionEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  Color _color = Colors.orange;
  double _size = 20.0;
  bool _isclicked = false;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _controller, curve: Curves.linear));
  }

  TextStyle _textStyle1 =  TextStyle(
      fontSize: 15, color: Colors.orangeAccent, fontWeight: FontWeight.normal
  );
  TextStyle _textStyle2 =  TextStyle(
      fontSize: 25, color: Colors.blueGrey, fontWeight: FontWeight.bold
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .2,
            ),
            DefaultTextStyleTransition(
                style: _animation.drive(TextStyleTween(begin: _textStyle1,end: _textStyle2)), child: Text("Hello,welcome back")),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .2,
            ),
            ElevatedButton(onPressed: () {
              if (_controller.status == AnimationStatus.completed) {
                _controller.reverse();
              } else {
                _controller.forward();
              }
            }, child: const Text("Animate !")),
          ],
        ),
      ),
    );
  }
}
