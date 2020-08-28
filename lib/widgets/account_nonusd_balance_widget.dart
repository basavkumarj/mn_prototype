import 'package:flutter/material.dart';
import 'package:mn_prototype/other/constant_font.dart';

class NonUSDBalanceWidget extends StatelessWidget {
  final String balanceText;
  final GestureTapCallback onConvertPressed;

  NonUSDBalanceWidget(
      {Key key, @required this.balanceText, @required this.onConvertPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: Text("Non USD Balance",
                      style: Theme.of(context).textTheme.headline3),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 8.0, top: 1.0),
                  child: Text("Balance from other tokens",
                      style: Theme.of(context).textTheme.subtitle2),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 7.0),
                  margin: const EdgeInsets.only(bottom: 16.0),
                  child: Text("Convert to USD",
                      style: const TextStyle(
                          fontFamily: ConstantFonts.Averta,
                          fontSize: 14.0,
                          color: Color(0xFF4758CB))),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Text("\$$balanceText",
                style: const TextStyle(
                    fontFamily: ConstantFonts.Averta,
                    fontSize: 16.0,
                    color: Color(0xFF1D2440))),
          )
        ],
      ),
    );
  }
}
