import 'package:flutter/material.dart';
import 'package:mn_prototype/other/constant_font.dart';

class AccountBalanceWidget extends StatelessWidget {
  final String accountBalanceText;
  final EdgeInsets margin;

  AccountBalanceWidget(
      {Key key,
      @required this.accountBalanceText,
      this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text("\$$accountBalanceText",
                  style: Theme.of(context).textTheme.headline2),
              Container(
                margin: const EdgeInsets.only(left: 13.0),
                child: Text("USDC Balance",
                    style: Theme.of(context).textTheme.subtitle1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
