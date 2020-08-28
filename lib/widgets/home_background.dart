import 'package:flutter/material.dart';

class HomeBackground extends StatefulWidget {
  @override
  _HomeBackgroundState createState() => _HomeBackgroundState();
}

class _HomeBackgroundState extends State<HomeBackground>
    with SingleTickerProviderStateMixin {
  AnimationController _hueAnimationController;
  Animatable<Color> _backgroundColors = TweenSequence<Color>([
    TweenSequenceItem(
        weight: 1.0, tween: ColorTween(begin: Colors.red, end: Colors.blue)),
    TweenSequenceItem(
        weight: 1.0, tween: ColorTween(begin: Colors.blue, end: Colors.green)),
    TweenSequenceItem(
        weight: 1.0, tween: ColorTween(begin: Colors.green, end: Colors.red)),
  ]);

  @override
  void initState() {
    super.initState();
    _hueAnimationController = AnimationController(
      duration: Duration(seconds: 15),
      vsync: this,
    )
      ..repeat();
  }

  @override
  void dispose() {
    _hueAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _hueAnimationController,
        builder: (BuildContext context, Widget child) {
          return Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              color: _backgroundColors.evaluate(
                  AlwaysStoppedAnimation(_hueAnimationController.value)));
        });
  }
}
