import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mn_prototype/models/apods_model.dart';
import 'package:mn_prototype/other/constant_font.dart';

class HomeApodsWidget extends StatefulWidget {
  final ApodsModel apods;

  HomeApodsWidget({Key key, @required this.apods}) : super(key: key);

  @override
  _HomeApodsWidgetState createState() => _HomeApodsWidgetState();
}

class _HomeApodsWidgetState extends State<HomeApodsWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(HomeApodsWidget oldWidget) {
    if (_controller.isCompleted) _controller.reset();
    _controller.forward();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.apods.title,
            maxLines: 2,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Container(
            margin: EdgeInsets.only(top: 8.0),
            child: Text(widget.apods.description,
                maxLines: 5, style: Theme.of(context).textTheme.bodyText2),
          ),
        ],
      ),
    );
  }
}
