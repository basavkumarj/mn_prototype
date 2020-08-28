import 'package:flutter/material.dart';
import 'package:mn_prototype/other/constant_font.dart';

class AccountInformationWidget extends StatelessWidget {
  final String nameText, emailText, contactText;
  final ImageProvider avatarImage;

  AccountInformationWidget(
      {Key key,
      @required this.nameText,
      @required this.emailText,
      @required this.contactText,
      @required this.avatarImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(nameText, style: Theme.of(context).textTheme.headline1),
            Text(emailText, style: Theme.of(context).textTheme.subtitle1),
            Text(contactText, style: Theme.of(context).textTheme.subtitle1),
          ],
        ),
        CircleAvatar(
          radius: 31.0,
          backgroundImage: avatarImage,
          backgroundColor: Colors.transparent,
        ),
      ],
    );
  }
}
