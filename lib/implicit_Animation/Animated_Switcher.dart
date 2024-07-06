import 'package:flutter/material.dart';

class AnimatedSwitcherEx extends StatefulWidget {
  const AnimatedSwitcherEx({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherEx> createState() => _AnimatedSwitcherExState();
}

class _AnimatedSwitcherExState extends State<AnimatedSwitcherEx> {
  bool _isFirstClicked=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(duration: const Duration(seconds: 1),
          child:_isFirstClicked ?ElevatedButton(onPressed: (){
           setState(() {
             _isFirstClicked =! _isFirstClicked;
           });
          }, child: const Text("Login Button")):const CircularProgressIndicator()
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){setState(() {
        _isFirstClicked =! _isFirstClicked;
      });},child: const Icon(Icons.stop),),
    );
  }
}
