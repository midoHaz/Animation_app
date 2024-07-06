import 'package:animation/exolicit_Animation/Positioned_transition.dart';
import 'package:animation/exolicit_Animation/Rotation_transition.dart';
import 'package:animation/exolicit_Animation/Size_transition.dart';
import 'package:animation/implicit_Animation/%D9%90Animated_opacity..dart';
import 'package:animation/implicit_Animation/Animated_List_State.dart';
import 'package:animation/implicit_Animation/Animated_Switcher.dart';
import 'package:animation/implicit_Animation/Animated_align.dart';
import 'package:animation/implicit_Animation/Animated_container.dart';
import 'package:animation/implicit_Animation/Animated_cross_fade.dart';
import 'package:animation/implicit_Animation/Animated_padding.dart';
import 'package:animation/implicit_Animation/Animated_physical.dart';
import 'package:animation/implicit_Animation/Animated_position.dart';
import 'package:animation/implicit_Animation/Animated_position_directional.dart';
import 'package:animation/implicit_Animation/Animated_text.dart';
import 'package:animation/page_transitions_animation/PageFadeAnimation.dart';
import 'package:animation/page_transitions_animation/PageFadeEx.dart';
import 'package:animation/page_transitions_animation/PageMixFadeSize.dart';
import 'package:animation/page_transitions_animation/PageMixScaleRotate.dart';
import 'package:animation/page_transitions_animation/PageRotateAnimation.dart';
import 'package:animation/page_transitions_animation/PageScaleTransition.dart';
import 'package:animation/page_transitions_animation/PageSizeTransition.dart';
import 'package:animation/page_transitions_animation/PageSlideAnimation.dart';
import 'package:flutter/material.dart';

class ListPageTransitionsAnimation extends StatelessWidget {
  const ListPageTransitionsAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Transitions Animation"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(PageFadeAnimation(const PageFadeAnimationEx()));
                },
                child: const Text("Page Fade")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(PageScaleTransition(const PageFadeAnimationEx()));
                },
                child: const Text("Page Scale")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(PageRotateTransition(const PageFadeAnimationEx()));
                },
                child: const Text("Page Rotate")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(PageSlideTransition(const PageFadeAnimationEx()));
                },
                child: const Text("Page Slide")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(PageSizeTransition(const PageFadeAnimationEx()));
                },
                child: const Text("Page Size")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(PageMixFadeSize(const PageFadeAnimationEx()));
                },
                child: const Text("Page Mix Fade Size")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(PageMixScaleRotate(const PageFadeAnimationEx()));
                },
                child: const Text("Page Mix Scale Rotate")),
          ],
        ),
      ),
    );
  }
}
