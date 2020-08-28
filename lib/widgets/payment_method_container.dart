import 'package:flutter/material.dart';
import 'package:mn_prototype/other/constant_font.dart';

class PaymentMethodContainer extends StatelessWidget {
  final String text;
  final EdgeInsets margin;

  PaymentMethodContainer(
      {Key key,
      @required this.text,
      this.margin =
          const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Text(this.text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: ConstantFonts.Averta,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color(0xFF1D2440))),
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
      decoration: const BoxDecoration(
          color: Color(0xFFF1F2F5),
          borderRadius: const BorderRadius.all(Radius.circular(10.0))),
    );
  }
}
