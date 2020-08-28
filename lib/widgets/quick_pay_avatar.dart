import 'package:flutter/material.dart';
import 'package:mn_prototype/other/constant_font.dart';

class QuickPayAvatar extends StatelessWidget {
  final String text;
  final ImageProvider image;
  final GestureTapCallback onPressed;
  QuickPayAvatar({Key key, @required this.image, @required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          CircleAvatar(
            radius: 24.0,
            backgroundImage: image,
            backgroundColor: Colors.transparent,
          ),
          Container(
            margin: const EdgeInsets.only(top: 3.0),
            child: Text(this.text,
                style: const TextStyle(
                    fontFamily: ConstantFonts.AvernirNext,
                    fontSize: 13.0,
                    color: Color(0x99FFFFFF))),
          )
        ],
      ),
    );
  }
}
