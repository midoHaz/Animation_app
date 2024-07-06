import 'package:flutter/material.dart';

class PageSlideTransition extends PageRouteBuilder{
  final dynamic page;
  PageSlideTransition(this.page):super(
      pageBuilder: (context,animation,secondaryAnimation)=>page,
      transitionsBuilder: (context,animation,secondaryAnimation,child){
        var offset= Tween<Offset>(begin:const Offset(-1,0) ,end: Offset.zero);
        var offstAnimation=animation.drive(offset);

        return SlideTransition(position: offstAnimation,
        child: child,);
      }
  );
}
