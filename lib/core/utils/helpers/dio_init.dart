import 'package:dio/dio.dart';
import 'package:hse_product/core/utils/values/endpoints.dart';

import 'dio_logging_interceptors.dart';

Dio initDio() {
  Dio dio = Dio();
  dio.options.baseUrl = EndPoints.BASE_URL_API;
  dio.options.headers['Accept'] = 'application/json';
  dio.interceptors.add(DioLoggingInterceptors(dio));
  return dio;
}
