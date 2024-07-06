import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieSliderEx extends StatefulWidget {
  const LottieSliderEx({Key? key}) : super(key: key);

  @override
  State<LottieSliderEx> createState() => _LottieSliderExState();
}

class _LottieSliderExState extends State<LottieSliderEx> {
  final List<String> _animationLottiePaths = [
    "assets/lottie/bird.json",
    "assets/lottie/car.json",
    "assets/lottie/tigger.json",
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
          child: Lottie.asset(_animationLottiePaths[index],
              repeat: true, reverse: false),
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
