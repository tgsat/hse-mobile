import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hse_product/core/error/exceptions.dart';

abstract class ProfileRemoteDataSource {
  /// Throws a [ServerException] for all error codes.
  Future<void> logoutProfile();
}

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  @override
  Future<void> logoutProfile() async {
    try {
      await GoogleSignIn().signOut();
      await FacebookAuth.instance.logOut();
    } catch (_) {
      throw ServerException();
    }
  }
}
