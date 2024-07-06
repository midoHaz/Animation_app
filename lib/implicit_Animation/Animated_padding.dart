import 'package:flutter/material.dart';

class AnimatedPaddingEx extends StatefulWidget {
  const AnimatedPaddingEx({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingEx> createState() => _AnimatedPaddingExState();
}

class _AnimatedPaddingExState extends State<AnimatedPaddingEx> {
  List<String>Images=[
    "assets/jerry.jpg",
    "assets/tommy.jpg",
    "assets/dog.jpg",
    "assets/cheese.jpg",
  ];
double _defaultPadding=10.0;
bool _isExpanded=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: SafeArea(child:GridView.count(crossAxisCount: 2,children:List.generate(Images.length, (index){
          return AnimatedPadding(
            padding: EdgeInsets.all(_defaultPadding),
            duration: const Duration(milliseconds: 500),
            curve: Curves.decelerate,
            child: SizedBox(
              width: 100.0,
              height: 100.0,
              child: Image.asset(Images[index],fit: BoxFit.fill,),
            ),
          );
        }),)
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _isExpanded =! _isExpanded;
          _defaultPadding= _isExpanded?25.0:10.0;
        });
      },child: Icon(_isExpanded?Icons.expand:Icons.expand_circle_down_outlined),),
    );
  }
}
