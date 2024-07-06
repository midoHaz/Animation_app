import 'package:flutter/material.dart';

class CustomePainterEx extends StatefulWidget {
  const CustomePainterEx({Key? key}) : super(key: key);

  @override
  State<CustomePainterEx> createState() => _CustomePainterExState();
}

class _CustomePainterExState extends State<CustomePainterEx>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _sizeAnimation = Tween<double>(begin: 20, end: 120).animate(_controller);
    _colorAnimation = ColorTween(begin: Colors.red, end: Colors.blue)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.forward();
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                painter: CirclePainter(_colorAnimation.value??Colors.red,_sizeAnimation.value),
                size: Size.square(200),
              );
            }),
      ),
    );
  }
}
class CirclePainter extends CustomPainter{
  final double _size;
  final Color _color;
  CirclePainter(this._color,this._size);
  @override
  void paint(Canvas canvas, Size size) {
    final paint =Paint();
    paint.color=_color;
    paint.style=PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width/2, size.height/2), _size,paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return(_size!=oldDelegate._size||_color!=oldDelegate._color);
  }

}