import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mn_prototype/other/constant_font.dart';
import 'package:mn_prototype/widgets/account_balance_widget.dart';
import 'package:mn_prototype/widgets/account_bottom_panel.dart';
import 'package:mn_prototype/widgets/account_button.dart';
import 'package:mn_prototype/widgets/account_information_widget.dart';
import 'package:mn_prototype/widgets/account_nonusd_balance_widget.dart';
import 'package:mn_prototype/widgets/custom_account_tile.dart';
import 'package:mn_prototype/widgets/payment_method_container.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 1.0),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height),
                child: IntrinsicHeight(
                  child: Stack(
                    children: [
                      Container(
                        color: Color(0xFF4758CB),
                        child: SvgPicture.asset(
                          'assets/images/account_bg.svg',
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      Column(
                        children: [
                          SafeArea(
                              bottom: false,
                              child: Container(
                                margin: EdgeInsets.only(
                                    top: 64.0, left: 24.0, right: 24.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    AccountInformationWidget(
                                        nameText: "Arthur Cooper",
                                        emailText: "arthurcooper@live.com",
                                        contactText: "(629) 555-0129",
                                        avatarImage: AssetImage(
                                            "assets/images/user_avatar.png")),
                                    AccountBalanceWidget(
                                      accountBalanceText: "20.2",
                                      margin: EdgeInsets.only(top: 32.0),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 20.0, bottom: 31.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Expanded(
                                              child: AccountButton(
                                            onPressed: () =>
                                                _withdrawTap(context),
                                            //withdrawTap,
                                            text: "Withdraw",
                                          )),
                                          SizedBox(
                                            width: 21.0,
                                          ),
                                          Expanded(
                                              child: AccountButton(
                                            onPressed: () {},
                                            text: "Add Fund",
                                          )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                            child: AccountBottomPanel(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  NonUSDBalanceWidget(
                                      balanceText: "243.44",
                                      onConvertPressed: null),
                                  const Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24.0),
                                    child: const Divider(
                                      height: 0.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 13.0,
                                  ),
                                  CustomAccountTile(
                                    onPressed: null,
                                    leadingWidget: SvgPicture.asset(
                                        'assets/images/account_list_icon.svg'),
                                    titleText: "My rewards",
                                    trailingText: "120 Points",
                                    trailingWidget: SvgPicture.asset(
                                        'assets/images/right_arrow.svg'),
                                  ),
                                  CustomAccountTile(
                                    onPressed: null,
                                    leadingWidget: SvgPicture.asset(
                                        'assets/images/account_list_icon.svg'),
                                    titleText: "All Transactions",
                                    trailingWidget: SvgPicture.asset(
                                        'assets/images/right_arrow.svg'),
                                  ),
                                  CustomAccountTile(
                                    onPressed: null,
                                    leadingWidget: SvgPicture.asset(
                                        'assets/images/account_list_icon.svg'),
                                    titleText: "Feedback",
                                    trailingWidget: SvgPicture.asset(
                                        'assets/images/right_arrow.svg'),
                                  ),
                                  SizedBox(
                                    height: 12.0,
                                  ),
                                  const Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24.0),
                                    child: const Divider(
                                      height: 0.0,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => {},
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24.0, vertical: 16.0),
                                      width: MediaQuery.of(context).size.width,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 12.0),
                                      child: Text(
                                        "Logout",
                                        style: TextStyle(
                                            fontFamily: ConstantFonts.Averta,
                                            color: Color(0xFFFB6060),
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24.0),
                                    child: const Divider(
                                      height: 0.0,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 24.0),
                                    child: Text(
                                      "Version 1.0",
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
              child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  padding: EdgeInsets.all(24.0),
                  onPressed: () => Navigator.of(context).pop())),
        ],
      ),
    );
  }

  void _withdrawTap(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(14.0),
      )),
      context: context,
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 33.0,
              height: 4.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
                color: Color(0xFFDCDFE6),
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 14.0, bottom: 20.0),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin:
                  const EdgeInsets.only(bottom: 16.0, left: 24.0, right: 24.0),
              child: Text("Withdraw Options",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: ConstantFonts.Averta,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Color(0xFF1D2440))),
            ),
            PaymentMethodContainer(text: "Payment Method 1"),
            PaymentMethodContainer(text: "Payment Method 2"),
            PaymentMethodContainer(text: "Payment Method 3"),
            SizedBox(
              height: 54.0,
            )
          ],
        );
      },
    );
  }
}
