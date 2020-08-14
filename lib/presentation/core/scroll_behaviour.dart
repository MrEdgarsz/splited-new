import 'package:flutter/material.dart';

class MyScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class MyListView extends StatelessWidget {
  final List<Widget> children;

  const MyListView({@required this.children});
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyScrollBehavior(),
      child: ListView(
        children: children,
      ),
    );
  }
}
