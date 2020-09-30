import 'package:firebase_auth/firebase_auth.dart';
import 'package:splited/domain/auth/value_objects/unique_id.dart';
import 'package:splited/presentation/auth/user.dart';

extension FirebaseUserDomainX on FirebaseUser {
  Future<User> toDomain() async {
    try {
      return User(
        id: UniqueID.fromUniqueString(uid),
        accessToken: await _getAccessToken(),
      );
      // ignore: avoid_catching_errors
    } on NoSuchMethodError catch (_) {
      return null;
    }
  }

  Future<String> _getAccessToken() async {
    return getIdToken().then((value) => value.token);
  }
}
