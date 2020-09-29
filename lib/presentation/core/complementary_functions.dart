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

void showLinkingDialog(
    BuildContext context, List<String> signInMethods, AccountType type) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Łączenie kont"),
      content: Text(
          "Konto do którego próbujesz się zalogować zostało założone inną metodą niż tą którą próbujesz się zalogować, czy chcesz powiązać swoje konto w serwisie również z tą metodą logowania?"),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Zaloguj inną metodą",
          ),
        ),
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
            ExtendedNavigator.of(context).replace(Routes.linkingAccountSignIn,
                arguments: LinkingAccountSignInArguments(
                    signInMethods: signInMethods, accountType: type));
          },
          child: Text(
            "Połącz Konta",
            style: TextStyle(color: HexColor("#24BA60")),
          ),
        ),
      ],
    ),
  );
}
