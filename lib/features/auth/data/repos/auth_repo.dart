import 'package:dio/dio.dart';
import 'package:flutter_tasker/core/utils/api_service.dart';

class AuthRepo {
  static final AuthRepo _instance = AuthRepo._internal(ApiService());

  factory AuthRepo() => _instance;

  AuthRepo._internal(this._apiService);

  final ApiService _apiService;

  register(Map<String, dynamic> userData) async {
    FormData formData = FormData.fromMap(userData);
    await _apiService.post(
      endPoin: 'Users/register',
      options: Options(
        contentType: Headers.multipartFormDataContentType,
      ),
    );
  }
}
