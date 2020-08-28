import 'package:flutter/material.dart';
import 'package:mn_prototype/bloc/bloc_provider.dart';
import 'package:mn_prototype/bloc/home_bloc.dart';
import 'package:mn_prototype/config/app_theme.dart';
import 'package:mn_prototype/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matic Prototype',
      theme: AppTheme.lightTheme,
      home: BlocProvider<HomeBloc>(
        bloc: HomeBloc(),
        child: HomeScreen(),
      ),
    );
  }
}
