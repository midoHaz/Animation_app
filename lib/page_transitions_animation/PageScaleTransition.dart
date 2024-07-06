import 'package:flutter/material.dart';

class PageScaleTransition extends PageRouteBuilder{
  final dynamic page;
  PageScaleTransition(this.page):super(
      pageBuilder: (context,animation,secondaryAnimation)=>page,
      transitionsBuilder: (context,animation,secondaryAnimation,child){
        var _animation= Tween<double>(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: animation, curve: Curves.bounceInOut));
        return ScaleTransition(scale: _animation,child: child,);
      }
  );
}