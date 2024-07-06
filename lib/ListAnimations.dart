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
import 'package:flutter/material.dart';

class ListAnimation extends StatelessWidget {
  const ListAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Implicit Animation"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedAlignTommy()),
                  );
                },
                child: const Text("Animated Align")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedContainerJerry()),
                  );
                },
                child: const Text("Animated Container")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedText()),
                  );
                },
                child: const Text("Animated Text")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedOpacityEx()),
                  );
                },
                child: const Text("Animated Opacity")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedPaddingEx()),
                  );
                },
                child: const Text("Animated Padding")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedPhysical()),
                  );
                },
                child: const Text("Animated Physical")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedPositionEx()),
                  );
                },
                child: const Text("Animated Positioned")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const AnimatedPositionDirectionalEx()),
                  );
                },
                child: const Text("Animated Positioned Directional")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedCrossFadeEx()),
                  );
                },
                child: const Text("Animated Cross Fade")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedSwitcherEx()),
                  );
                },
                child: const Text("Animated Switcher")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AnimatedListStateEx()),
                  );
                },
                child: const Text("Animated List State")),

          ],
        ),
      ),
    );
  }
}
