import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Function onPressed;
  final Color color;
  final Widget child;

  const CustomRaisedButton(
      {@required this.onPressed, @required this.color, @required this.child});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => onPressed(),
      color: color,
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: child,
    );
  }
}
