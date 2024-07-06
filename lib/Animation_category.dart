import 'package:animation/ListAnimations.dart';
import 'package:animation/ListExplicitAnimation.dart';
import 'package:animation/ListMoreAnimation.dart';
import 'package:animation/ListPageTransitionAnimation.dart';
import 'package:flutter/material.dart';

class AnimationCategory extends StatefulWidget {
  const AnimationCategory({Key? key}) : super(key: key);

  @override
  State<AnimationCategory> createState() => _AnimationCategoryState();
}

class _AnimationCategoryState extends State<AnimationCategory>  with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller.forward();
  }

  void _reverseAnimation() {
    _controller.reverse();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation course"),
      ),
      body: SafeArea(
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            CustomGridViewChild(
                text: "Implicit Animation",
                color: Colors.teal[100],
                ontab: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListAnimation()));
                }),
            CustomGridViewChild(
                text: "Explicit Animation",
                color: Colors.teal[200],
                ontab: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListExplicitAnimation()));
                }),
            CustomGridViewChild(
                text: "Page Transitions Animation",
                color: Colors.teal[300],
                ontab: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListPageTransitionsAnimation()));
                }),
            CustomGridViewChild(
                text: "More Animation",
                color: Colors.teal[400],
                ontab: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListMoreAimation()));
                }),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: _startAnimation,
        child: AnimatedIcon(icon:AnimatedIcons.add_event, progress: _animation),
      ),
    );
  }

  GestureDetector CustomGridViewChild(
      {required String text,
      required Color? color,
      required VoidCallback ontab}) {
    return GestureDetector(
      onTap: ontab,
      child: Container(
        padding: const EdgeInsets.all(8),
        color: color,
        child: Text(text),
      ),
    );
  }
}
