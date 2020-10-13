import 'package:firebase_auth/firebase_auth.dart';
import 'package:splited/domain/auth/user.dart';
import 'package:splited/domain/auth/value_objects/unique_id.dart';

extension FirebaseUserDomainX on FirebaseUser {
  Future<User> toDomain() async {
    try {
      
      return User(
        id: UniqueID.fromUniqueString(uid),
      );
      // ignore: avoid_catching_errors
    } on NoSuchMethodError catch (_) {
      return null;
    }
  }
}
