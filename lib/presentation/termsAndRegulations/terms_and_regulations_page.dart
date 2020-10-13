import 'package:flutter/material.dart';
import 'package:splited/presentation/core/scroll_behaviour.dart';
import 'package:splited/presentation/core/widgets/custom_app_bar.dart';

class TermsAndRegulationsPage extends StatelessWidget {
  const TermsAndRegulationsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          CustomAppBar.back(
            onIconPressed: () {},
            title: "Regulamin Serwisu",
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.fromLTRB(34, 25, 34, 30),
              color: const Color(0xFF4B4B4B),
              width: double.infinity,
            ),
          ),
        ],
      ),
    ));
  }
}
