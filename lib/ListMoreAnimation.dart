
import 'package:animation/more_Animation/CustomePainterEx.dart';
import 'package:animation/more_Animation/Lottie_ball.dart';
import 'package:animation/more_Animation/Rive.dart';
import 'package:animation/more_Animation/lottie_slider_ex.dart';
import 'package:flutter/material.dart';

class ListMoreAimation extends StatelessWidget {
  const ListMoreAimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("More Animation"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CustomePainterEx()));
                },
                child: const Text("Custom Painter ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LottieSliderEx()));
                },
                child: const Text("Lottie Slider ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LottieBall()));
                },
                child: const Text("Lottie page ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const RiveAnimationEx()));
                },
                child: const Text("Rive ")),
          ],
        ),
      ),
    );
  }
}
