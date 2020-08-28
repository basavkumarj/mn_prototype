import 'package:flutter/material.dart';
import 'package:mn_prototype/other/constant_font.dart';
import 'package:mn_prototype/screens/account_screen.dart';

class HomeAccountChip extends StatelessWidget {
  final String accountBalance;
  final ImageProvider avatarImage;

  HomeAccountChip(
      {Key key, @required this.accountBalance, @required this.avatarImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Chip(
          label: Text(
            "\$$accountBalance",
            style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: ConstantFonts.Averta,
                color: const Color(0xFF1D2440)),
          ),
          backgroundColor: Colors.white,
          avatar: CircleAvatar(
            radius: 18.0,
            backgroundColor: Colors.transparent,
            backgroundImage: avatarImage,
          ),
          labelPadding: const EdgeInsets.fromLTRB(7.0, 4.0, 12.0, 4.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(19.5))),
        ),
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AccountScreen())));
  }
}
