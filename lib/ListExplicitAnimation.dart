import 'package:animation/exolicit_Animation/Animated_builder.dart';
import 'package:animation/exolicit_Animation/Fade_transition.dart';
import 'package:animation/exolicit_Animation/Indexed_stack_transition.dart';
import 'package:animation/exolicit_Animation/Positioned_animation_transition.dart';
import 'package:animation/exolicit_Animation/Positioned_transition.dart';
import 'package:animation/exolicit_Animation/Rotation_transition.dart';
import 'package:animation/exolicit_Animation/Size_transition.dart';
import 'package:animation/exolicit_Animation/Tween_animation_builder.dart';
import 'package:animation/exolicit_Animation/default_text_style_transition.dart';
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
import 'package:flutter/material.dart';

class ListExplicitAnimation extends StatelessWidget {
  const ListExplicitAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explicit Animation"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PositionedTransitionEx()),
                  );
                },
                child: const Text("Positioned Transition")),
            const SizedBox(height: 8,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SizeTransitionEx()),
                  );
                },
                child: const Text("Size Transition")),
            const SizedBox(height: 8,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RotationTransitionEx()),
                  );
                },
                child: const Text("Rotation Transition")),
            const SizedBox(height: 8,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimationBuilderEx()),
                  );
                },
                child: const Text("Animated Builder")),
            const SizedBox(height: 8,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FadeTransitionEx()),
                  );
                },
                child: const Text("Fade Transition")),
            const SizedBox(height: 8,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PositionedDirectionalTransitionEx(
                        )),
                  );
                },
                child: const Text("Positioned Directional Transition")),
            const SizedBox(height: 8,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TweenAnimationBuilderEx(

                        )),
                  );
                },
                child: const Text("Tween Animation builder")),
            const SizedBox(height: 8,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DefaultTextTransitionEx(

                        )),
                  );
                },
                child: const Text("Default Text Style Animation")),
            const SizedBox(height: 8,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const IndexedStackTransitionEx(

                        )),
                  );
                },
                child: const Text("Indexed Stack Transition"))
          ],
        ),
      ),
    );
  }
}
