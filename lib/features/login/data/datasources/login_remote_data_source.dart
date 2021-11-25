import 'package:dio/dio.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:hse_product/core/data/models/login_model.dart';
import 'package:hse_product/core/error/exceptions.dart';
import 'package:hse_product/core/utils/values/endpoints.dart';
import 'package:hse_product/core/utils/values/linkedin_const.dart';

abstract class LoginRemoteDataSource {
  /// Throws a [ServerException] for all error codes.
  Future<LoginModel> loginGoogle();
  Future<LoginModel> loginFacebook();
  Future<LoginModel> loginLinkedin(String token);
}

class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  final Dio dio;

  LoginRemoteDataSourceImpl({required this.dio});

  @override
  Future<LoginModel> loginGoogle() async {
    try {
      // final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      // // If user cancel;
      // if (googleUser == null) {
      //   throw ServerException();
      // }
      // // Obtain the auth details from the request
      // final GoogleSignInAuthentication googleAuth =
      //     await googleUser.authentication;

      // FormData _formData = new FormData.fromMap({
      //   'provider': 'google',
      //   'access_token': googleAuth.accessToken,
      // });

      final response = await dio.post(
        EndPoints.SOCIAL_LOGIN,
      );

      if (response.statusCode == 200) {
        return LoginModel.fromJson(response.data);
      } else {
        throw ServerException();
      }
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<LoginModel> loginFacebook() async {
    try {
      // Trigger the sign-in flow
      // final LoginResult loginResult = await FacebookAuth.instance.login();

      // FormData _formData = new FormData.fromMap({
      //   'provider': 'facebook',
      //   'access_token': loginResult.accessToken!.token,
      // });

      final response = await dio.post(
        EndPoints.SOCIAL_LOGIN,
      );

      if (response.statusCode == 200) {
        return LoginModel.fromJson(response.data);
      } else {
        throw ServerException();
      }
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<LoginModel> loginLinkedin(String token) async {
    try {
      var link = 'https://www.linkedin.com/oauth/v2/accessToken?';
      link += 'grant_type=authorization_code&';
      link += 'code=' + token + '&';
      link += 'client_id=' + LINKEDIN_CLIENT_ID + '&';
      link += 'client_secret=' + LINKEDIN_CLIENT_SECRET + '&';
      link += 'redirect_uri=' + LIKEDIN_REDIRECT_URL;

      FormData _formData = new FormData.fromMap({
        'provider': 'linkedin',
        'access_token': token,
        'link': link,
      });

      final response = await dio.post(EndPoints.SOCIAL_LOGIN, data: _formData);

      if (response.statusCode == 200) {
        return LoginModel.fromJson(response.data);
      } else {
        throw ServerException();
      }
    } catch (_) {
      throw ServerException();
    }
  }
}
