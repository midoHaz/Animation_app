import 'package:flutter/material.dart';

class PageMixFadeSize extends PageRouteBuilder {
  final dynamic page;

  PageMixFadeSize(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return Align(
                  alignment: Alignment.center,
                  child: SizeTransition(
                    sizeFactor: animation,
                    child: FadeTransition(
                      opacity: animation,
                      child: child,
                    ),
                  ));
            });
}
