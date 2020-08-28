import 'dart:async';

import 'package:mn_prototype/bloc/bloc_provider.dart';
import 'package:mn_prototype/models/apods_model.dart';
import 'package:mn_prototype/other/utility.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc implements BlocBase {
  final _textSubject = BehaviorSubject<ApodsModel>();

  Stream<ApodsModel> get textStream => _textSubject.stream;

  @override
  void dispose() {
    _textSubject.close();
  }

  HomeBloc() {
    getData();
  }

  Future getData() async {
    List<ApodsModel> data = await Future.wait([
      Utility.getOldApodsData(1),
      Utility.getOldApodsData(2),
      Utility.getOldApodsData(3)
    ]);
    for (ApodsModel d in data) {
      _textSubject.add(d);
      await Future.delayed(Duration(seconds: 3));
    }
  }
}
