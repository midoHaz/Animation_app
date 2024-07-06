import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieBall extends StatefulWidget {
  const LottieBall({Key? key}) : super(key: key);

  @override
  State<LottieBall> createState() => _LottieBallState();
}

class _LottieBallState extends State<LottieBall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset("assets/lottie/ball.json",repeat: true,reverse: false,animate: true,width: double.infinity,height: double.infinity),
      ),
    );
  }
}
