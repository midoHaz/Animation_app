import 'package:flutter/material.dart';

class PageFadeAnimation extends PageRouteBuilder{
  final dynamic page;
  PageFadeAnimation(this.page):super(
    pageBuilder: (context,animation,secondaryAnimation)=>page,
    transitionsBuilder: (context,animation,secondaryAnimation,child){
      return Align(
        alignment: Alignment.center,
        child:FadeTransition(opacity: animation,child: child,),
      );
    }
  );
}