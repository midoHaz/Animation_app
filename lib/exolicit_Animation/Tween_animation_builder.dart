import 'package:flutter/material.dart';

class TweenAnimationBuilderEx extends StatefulWidget {
  const TweenAnimationBuilderEx({Key? key}) : super(key: key);

  @override
  State<TweenAnimationBuilderEx> createState() =>
      _TweenAnimationBuilderExState();
}

class _TweenAnimationBuilderExState extends State<TweenAnimationBuilderEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
double _opacityLevel =0.0;
@override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child:
        Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          SizedBox(
          height: MediaQuery.sizeOf(context).height * .2,
        ),
          TweenAnimationBuilder(tween: Tween<double>(begin: 0,
              end: _opacityLevel),
              duration: const Duration(seconds: 2),
              builder: (context,double value,Widget ? child){
                  return Opacity(opacity: value,child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(value*50)
                    ),),);
              },
          )
          , SizedBox(
            height: MediaQuery
                .sizeOf(context)
                .height * .2,
          ),
            ElevatedButton(onPressed: () {
              setState(() {
                _opacityLevel=_opacityLevel==0.0?1.0:0.0;
              });
            }, child: const Text("Animate",))
            ],
          ),
        )),);
  }
}
