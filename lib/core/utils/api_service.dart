import 'package:dio/dio.dart';

import 'shared_prefrences.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal(Dio());

  final _baseUrl = 'http://5.189.132.217/';

  final Dio _dio;

  factory ApiService() => _instance;

  ApiService._internal(this._dio);

  static final headers = {
    'Authorization': 'Bearer ${SharedPrefs.getAccessToken() ?? ''}'
  };

  final _postAndPutOptions = Options(
    headers: headers,
    contentType: Headers.multipartFormDataContentType,
  );
  final _getAndDeleteOptions = Options(
    headers: headers,
  );

  Future<dynamic> get({required String endPoint}) async {
    Response response =
        await _dio.get('$_baseUrl$endPoint', options: _getAndDeleteOptions);
    return response.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endPoint, Object? data, Options? options}) async {
    var response = await _dio.post('$_baseUrl$endPoint',
        data: data, options: options ?? _postAndPutOptions);
    return response.data;
  }

  Future<void> put({
    required String endPoint,
    Object? data,
  }) async {
    await _dio.put('$_baseUrl$endPoint',
        data: data, options: _postAndPutOptions);
  }

  Future<void> delete({
    required String endPoint,
    Object? data,
  }) async {
    await _dio.delete('$_baseUrl$endPoint', options: _getAndDeleteOptions);
  }
}
