import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthCredentials {
  FirebaseAuthCredentials({
    this.authCredential,
    this.emailAddress,
  });
  AuthCredential authCredential;
  String emailAddress;
}
