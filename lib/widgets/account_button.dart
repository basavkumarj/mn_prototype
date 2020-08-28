import 'package:flutter/material.dart';
import 'package:mn_prototype/other/constant_font.dart';

class AccountButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;

  AccountButton({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(11.0),
        decoration: const BoxDecoration(
            color: const Color(0x1AFFFFFF),
            borderRadius: const BorderRadius.all(Radius.circular(22.0))),
        child: Text(
          this.text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontFamily: ConstantFonts.AvernirNext,
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
