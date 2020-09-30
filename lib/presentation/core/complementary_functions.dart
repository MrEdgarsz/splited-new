import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:native_color/native_color.dart';
import 'package:splited/domain/auth/accountTypes.dart';

import 'Routes/router.gr.dart';

void showErrorDialog(BuildContext context, String title, String desc) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(desc),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Zamknij",
          ),
        ),
      ],
    ),
  );
}
