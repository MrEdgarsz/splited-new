import 'package:auto_route/auto_route_annotations.dart';
import 'package:splited/presentation/auth/linking_accounts/linking_join.dart';
import 'package:splited/presentation/auth/linking_accounts/linking_singIn.dart';
import 'package:splited/presentation/auth/register/register_page.dart';
import 'package:splited/presentation/auth/signIn/sign_in_page.dart';
import 'package:splited/presentation/homePage/home_page.dart';
import 'package:splited/presentation/splashScreen/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: RegisterPage),
    MaterialRoute(page: LinkingAccountSignIn),
    MaterialRoute(page: LinkingAccountJoinAccount),
  ],
)
class $Router {}
