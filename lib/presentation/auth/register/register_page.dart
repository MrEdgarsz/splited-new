import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splited/application/auth/register_from/register_bloc.dart';
import 'package:splited/presentation/auth/register/widgets/register_form.dart';
import 'package:splited/presentation/core/scroll_behaviour.dart';
import 'package:splited/presentation/core/widgets/custom_app_bar.dart';

import '../../../injection.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MyListView(
          children: [
            CustomAppBar.back(
              title: "Rejestracja",
              onIconPressed: () {
                Feedback.forTap(context);
                ExtendedNavigator.of(context).pop();
              },
            ),
            BlocProvider(
              create: (_) => getIt<RegisterBloc>(),
              child: const RegisterForm(),
            ),
          ],
        ),
      ),
    );
  }
}
