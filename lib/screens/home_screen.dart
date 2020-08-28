import 'package:flutter/material.dart';
import 'package:mn_prototype/bloc/bloc_provider.dart';
import 'package:mn_prototype/bloc/home_bloc.dart';
import 'package:mn_prototype/models/apods_model.dart';
import 'package:mn_prototype/widgets/home_account_chip.dart';
import 'package:mn_prototype/widgets/home_apods_widgets.dart';
import 'package:mn_prototype/widgets/home_background.dart';
import 'package:mn_prototype/widgets/quick_pay_avatar.dart';
import 'package:mn_prototype/widgets/rounded_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeBloc _homeBloc = BlocProvider.of<HomeBloc>(context);
    return Scaffold(
        body: Stack(
      children: [
        HomeBackground(),
        SafeArea(
            child: Container(
          margin: EdgeInsets.fromLTRB(24.0, 15.0, 24.0,
              MediaQuery.of(context).padding.bottom > 0 ? 0.0 : 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              HomeAccountChip(
                  accountBalance: "123.39",
                  avatarImage: AssetImage("assets/images/user_avatar.png")),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    StreamBuilder(
                        stream: _homeBloc.textStream,
                        builder: (BuildContext context,
                            AsyncSnapshot<ApodsModel> snapshot) {
                          if (snapshot.hasData && snapshot.data != null) {
                            return HomeApodsWidget(apods: snapshot.data,);
                          } else {
                            return Container();
                          }
                        }),
                    Container(
                      margin: EdgeInsets.only(top: 24.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          QuickPayAvatar(
                              image:
                                  AssetImage("assets/images/user_avatar.png"),
                              text: "Dalpat"),
                          QuickPayAvatar(
                              image:
                                  AssetImage("assets/images/user_avatar.png"),
                              text: "Jyoti"),
                          QuickPayAvatar(
                              image:
                                  AssetImage("assets/images/user_avatar.png"),
                              text: "Jyoti"),
                          QuickPayAvatar(
                              image:
                                  AssetImage("assets/images/user_avatar.png"),
                              text: "Jyoti"),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 18.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              child: RoundedButton(
                            text: "Request",
                            onPressed: () {},
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(29.0),
                                bottomLeft: Radius.circular(29.0)),
                          )),
                          Expanded(
                              child: RoundedButton(
                            text: "Pay",
                            onPressed: () {},
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(29.0),
                                bottomRight: Radius.circular(29.0)),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ],
    ));
  }
}
