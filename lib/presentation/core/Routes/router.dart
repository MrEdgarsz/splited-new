import 'package:auto_route/auto_route_annotations.dart';
import 'package:splited/presentation/auth/linking_accounts/linking_join.dart';
import 'package:splited/presentation/auth/linking_accounts/linking_singIn.dart';
import 'package:splited/presentation/auth/register/register_page.dart';
import 'package:splited/presentation/auth/signIn/sign_in_page.dart';
import 'package:splited/presentation/homePage/home_page.dart';
import 'package:splited/presentation/splashScreen/splash_screen.dart';

@MaterialAutoRouter(generateRouteList: true)
class $Router {
  @initial
  SplashScreen splashScreen;
  HomePage homePage;
  SignInPage signInPage;
  RegisterPage registerPage;
  LinkingAccountSignIn linkingAccountSignIn;
  LinkingAccountJoinAccount linkingAccountJoinAccount;
}
