import 'package:flutter/material.dart';
import 'package:mn_prototype/other/constant_font.dart';

class CustomAccountTile extends StatelessWidget {
  final String titleText, trailingText;
  final Widget leadingWidget, trailingWidget;
  final GestureTapCallback onPressed;

  CustomAccountTile(
      {Key key,
      @required this.leadingWidget,
      @required this.titleText,
      this.trailingText,
      @required this.trailingWidget,
      @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Row(
          children: [
            Container(
              child: leadingWidget,
              margin: const EdgeInsets.only(right: 18.0),
            ),
            Expanded(
                child: Text(titleText,
                    style: const TextStyle(
                        fontFamily: ConstantFonts.Averta,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Color(0xFF1D2440)))),
            trailingText != null
                ? Text(
                    trailingText,
                    style: const TextStyle(
                        fontFamily: ConstantFonts.Averta,
                        fontSize: 16.0,
                        color: Color(0xFF1D2440)),
                  )
                : SizedBox(),
            Container(
              child: trailingWidget,
              margin: const EdgeInsets.only(left: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
