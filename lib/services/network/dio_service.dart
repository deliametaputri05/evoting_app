import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioService {
  Dio get dio => _dio();
  Dio _dio() {
    final baseOptions = BaseOptions(
      connectTimeout: 30000000,
      receiveTimeout: 5000000,
      validateStatus: (status) {
        return status! < 500;
      },
    );
    var dio = Dio(baseOptions);
    dio.interceptors.add(PrettyDioLogger(
      responseBody: true,
      error: true,
      requestHeader: true,
      requestBody: true,
      request: true,
      responseHeader: true,
      compact: true,
      maxWidth: 800,
    ));
    return dio;
  }
}
