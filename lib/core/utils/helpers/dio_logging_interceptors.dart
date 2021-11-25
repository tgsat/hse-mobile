import 'package:dio/dio.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hse_product/di/injection_container.dart';

import 'navigation_service.dart';

class DioLoggingInterceptors extends InterceptorsWrapper {
  final Dio _dio;

  DioLoggingInterceptors(this._dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    print(
        "--> ${options.method.toUpperCase()} ${"" + (options.baseUrl) + (options.path)}");
    print("Headers:");
    options.headers.forEach((k, v) => print('$k: $v'));
    if (options.queryParameters != null) {
      print("queryParameters:");
      options.queryParameters.forEach((k, v) => print('$k: $v'));
    }
    if (options.data != null) {
      print("Body: ${options.data}");
    }
    print("--> END ${options.method.toUpperCase()}");

    //if (options.headers.containsKey('requirestoken')) {
    //options.headers.remove('requirestoken');
    // String accessToken = await sl.get<SharedPref>().getToken() ?? '';
    // print('accessToken: $accessToken');
    // options.headers.addAll({'Authorization': 'Bearer $accessToken'});
    //}
    //return options;
    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    print(
        "<-- ${response.statusCode} ${(response.requestOptions != null ? (response.requestOptions.baseUrl + response.requestOptions.path) : 'URL')}");
    print("Headers:");
    response.headers.forEach((k, v) => print('$k: $v'));
    print("Response: ${response.data}");
    print("<-- END HTTP");
    return super.onResponse(response, handler);
  }

  @override
  Future onError(DioError dioError, ErrorInterceptorHandler handler) async {
    print(
        "<-- ${dioError.message} ${(dioError.response?.requestOptions != null ? (dioError.requestOptions.baseUrl + dioError.requestOptions.path) : 'URL')}");
    print(
        "${dioError.response != null ? dioError.response?.statusMessage : 'Unknown Error'}");
    print("<-- ${dioError.response}");
    print("<-- End error");

    int responseCode = dioError.response?.statusCode ?? 0;

    if (responseCode == 401) {
      // await GoogleSignIn().signOut();
      // await FacebookAuth.instance.logOut();
      sl<SharedPreferences>().clear();
      sl<NavigationService>().navigateTo('/LOGIN');
    }

    // String? oldAccessToken = await sl<SharedPref>().getToken();

    // print('oldAccessToken: $oldAccessToken');
    // if (responseCode == 401) {
    //   if (oldAccessToken != null) {
    //     _dio.interceptors.requestLock.lock();
    //     _dio.interceptors.responseLock.lock();

    //     final result = await sl<AuthRemote>().postRefreshToken(oldAccessToken);
    //     result.fold(
    //       (failure) {
    //         sl<SharedPref>().clear();
    //         sl<NavigationService>().navigateTo(ConstantRoute.LOGIN);
    //       },
    //       (response) async* {
    //         String newAccessToken = response.accessToken ?? '';
    //         sl<SharedPref>().setToken(newAccessToken);
    //       },
    //     );

    //     //RequestOptions options = dioError.response!.requestOptions;
    //     // RequestOptions _reqOptions = dioError.response!.requestOptions;
    //     // _reqOptions.headers.addAll({'requirestoken': true});
    //     // _dio.interceptors.requestLock.unlock();
    //     // _dio.interceptors.responseLock.unlock();

    //     RequestOptions _reqOptions = dioError.response!.requestOptions;
    //     Options _options = new Options();
    //     _options.headers!.addAll({'requirestoken': true});
    //     _dio.interceptors.requestLock.unlock();
    //     _dio.interceptors.responseLock.unlock();

    //     return _dio.request(_reqOptions.path, options: _options);
    //   } else {
    //     sl<SharedPref>().clear();
    //     sl<NavigationService>().navigateTo(ConstantRoute.LOGIN);
    //     return super.onError(dioError, handler);
    //   }
    // } else {
    //   return super.onError(dioError, handler);
    // }
    return super.onError(dioError, handler);
  }
}
