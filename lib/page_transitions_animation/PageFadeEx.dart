import 'package:flutter/material.dart';

class PageFadeAnimationEx extends StatefulWidget {
  const PageFadeAnimationEx({Key? key}) : super(key: key);

  @override
  State<PageFadeAnimationEx> createState() => _PageFadeAnimationExState();
}

class _PageFadeAnimationExState extends State<PageFadeAnimationEx> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Page Two "),
      ),
      body: Center(
        child: ElevatedButton(onPressed:(){
          Navigator.pop(context);
        }, child:const  Text("Go back page ")),
      ),
    );
  }
}
