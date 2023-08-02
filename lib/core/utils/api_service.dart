import 'package:dio/dio.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal(Dio());

  final _baseUrl = 'http://5.189.132.217/';

  final Dio _dio;

  factory ApiService() => _instance;

  ApiService._internal(this._dio);

  Future<dynamic> get({required String endPoin, Options? options}) async {
    Response response = await _dio.get('$_baseUrl$endPoin', options: options);
    return response.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endPoin, Object? data, Options? options}) async {
    var response =
        await _dio.post('$_baseUrl$endPoin', data: data, options: options);
    return response.data;
  }

  Future<void> put(
      {required String endPoint, Object? data, Options? options,Map<String, dynamic>? queryParameters}) async {
    await _dio.put('$_baseUrl$endPoint',queryParameters: queryParameters, data: data, options: options);
  }
}
