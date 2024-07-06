import 'package:flutter/material.dart';

class IndexedStackTransitionEx extends StatefulWidget {
  const IndexedStackTransitionEx({Key? key}) : super(key: key);

  @override
  State<IndexedStackTransitionEx> createState() =>
      _IndexedStackTransitionExState();
}

class _IndexedStackTransitionExState extends State<IndexedStackTransitionEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(milliseconds: 600));
    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  void gotoNextIndex(){
    _currentIndex++;
    if(_currentIndex>3){
      _currentIndex=0;
    }
    setState(() {
      _controller.reset();
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ScaleTransition(
            scale: _scaleAnimation,
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: Container(
                alignment: Alignment.center,
                color: Colors.orange,
                child: Image.asset("assets/jerry.jpg"),
              ),
            ),
          ),
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey,
              child: Image.asset("assets/dog.jpg"),
            ),
          ),
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Image.asset("assets/tommy.jpg"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: gotoNextIndex,child: Icon(Icons.skip_next_outlined),),
    );
  }
}
