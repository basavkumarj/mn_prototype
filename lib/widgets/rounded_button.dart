import 'package:flutter/material.dart';
import 'package:mn_prototype/other/constant_font.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;
  final BorderRadius borderRadius;

  RoundedButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.borderRadius = const BorderRadius.all(Radius.circular(10.0))})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: this.onPressed,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          this.text,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
              fontFamily: ConstantFonts.AvernirNext,
              color: Color(0xFF1D2440)),
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
    );
  }
}
