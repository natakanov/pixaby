import 'package:dio/dio.dart';

Dio createHttpClient({
  Duration timeout = const Duration(seconds: 20),
}) {
  final dio = Dio();

  dio.options
    ..baseUrl = 'https://pixabay.com/'
    ..connectTimeout = timeout
    ..receiveTimeout = timeout
    ..sendTimeout = timeout;
  return dio;
}
