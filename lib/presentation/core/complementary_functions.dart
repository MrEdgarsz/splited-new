import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:native_color/native_color.dart';
import 'package:splited/domain/auth/accountTypes.dart';
import 'package:splited/presentation/core/Localization/app_localizations.dart';

import 'Routes/router.gr.dart';

void showErrorDialog(BuildContext context, String titleId, String descId) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(AppLocalizations.of(context).translate(titleId)),
      content: Text(AppLocalizations.of(context).translate(descId)),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            AppLocalizations.of(context).translate('closeDialog'),
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
      title: Text(AppLocalizations.of(context)
          .translate("AF_accountCanBeLinked_title")),
      content: Text(
          AppLocalizations.of(context).translate("AF_accountCanBeLinked_desc")),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            AppLocalizations.of(context).translate('AF_LinkingDialog_close'),
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
            AppLocalizations.of(context).translate('AF_LinkingDialog_link'),
            style: TextStyle(color: HexColor("#24BA60")),
          ),
        ),
      ],
    ),
  );
}
