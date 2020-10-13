import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splited/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:splited/presentation/auth/signIn/sign_in_from_widget.dart';
import 'package:splited/presentation/core/scroll_behaviour.dart';
import 'package:splited/presentation/core/widgets/custom_app_bar.dart';
import '../../../injection.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MyListView(
          children: [
            CustomAppBar.back(
              title: "Logowanie",
              onIconPressed: () {
                Feedback.forTap(context);
                ExtendedNavigator.of(context).maybePop();
              },
            ),
            BlocProvider(
              create: (_) => getIt<SignInFormBloc>(),
              child: const SignInFormWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
