import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

class RiveAnimationEx extends StatefulWidget {
  const RiveAnimationEx({Key? key}) : super(key: key);

  @override
  State<RiveAnimationEx> createState() => _LottieSliderExState();
}

class _LottieSliderExState extends State<RiveAnimationEx> {
  final List<String> _animationLottiePaths = [
    "assets/rive/bear.riv",
    "assets/rive/girl.riv",
    "assets/rive/rating.riv",
  ];

  PageController controller = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startAnimation();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _stopAnimation();
    super.dispose();
  }
  void _startAnimation(){
    Future.delayed(const Duration(seconds: 3)).then((value){
      if(_currentPage == _animationLottiePaths.length-1){
        controller.animateToPage(0, duration:const  Duration(milliseconds: 500), curve: Curves.linear);
      }else{
        controller.nextPage(duration: const  Duration(milliseconds: 500), curve: Curves.linear);
      }
      _startAnimation();
    });
  }
  void _stopAnimation(){
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: controller,
          itemCount: _animationLottiePaths.length,
          onPageChanged: (int page){
            setState(() {
              _currentPage=page;
            });
          },
          itemBuilder: (context, index) {
            return  Center(
              child: RiveAnimation.asset(_animationLottiePaths[index],),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.teal,items: const [
        BottomNavigationBarItem(icon: Icon(Icons.play_arrow_outlined),label: "Bird"),
        BottomNavigationBarItem(icon: Icon(Icons.car_crash),label: "Car"),
        BottomNavigationBarItem(icon: Icon(Icons.animation),label: "Tiger")
      ],currentIndex: _currentPage,onTap: (int page){
        controller.animateToPage(page, duration: const Duration(milliseconds: 500), curve: Curves.linear);
      },),
    );
  }
}

