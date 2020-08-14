import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({Key key, @required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 1),
          color: Theme.of(context).dividerColor,
          height: 1,
          width: double.infinity,
        ),
        Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            text,
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
