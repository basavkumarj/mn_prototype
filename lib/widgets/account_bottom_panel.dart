import 'package:flutter/material.dart';

class AccountBottomPanel extends StatefulWidget {
  final Widget child;

  AccountBottomPanel({Key key, @required this.child}) : super(key: key);

  @override
  _AccountBottomPanelState createState() => _AccountBottomPanelState();
}

class _AccountBottomPanelState extends State<AccountBottomPanel>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offset;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 800), vsync: this);
    _offset = Tween<Offset>(begin: Offset(0.0, 2.0), end: Offset.zero).animate(
        CurvedAnimation(parent: _controller, curve: Curves.linearToEaseOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offset,
      child: Container(
          color: Colors.white,
          child: widget.child),
    );
  }
}
