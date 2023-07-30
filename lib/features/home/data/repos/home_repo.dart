import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_tasker/core/errors/failures.dart';
import 'package:flutter_tasker/core/utils/api_service.dart';
import 'package:flutter_tasker/core/utils/shared_prefrences.dart';
import 'package:flutter_tasker/features/home/data/models/task/task_model.dart';

class HomeRepo {
  static final HomeRepo _instance = HomeRepo._internal(ApiService());

  factory HomeRepo() => _instance;

  HomeRepo._internal(this._apiService);
  final ApiService _apiService;
  String token = SharedPrefs.getAccessToken() ?? '';
  Future<Either<Failure, TaskModel>> addTask(Map<String, dynamic> task) async {
    FormData formData = FormData.fromMap(task);

    try {
      Map<String, dynamic> data = await _apiService.post(
        endPoin: 'Tasks',
        data: formData,
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
          contentType: Headers.multipartFormDataContentType,
        ),
      );

      return Right(TaskModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeotion(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<TaskModel>>> fetchTasks() async {
    try {
      var data = await _apiService.get(
        endPoin: 'Tasks/list',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );
      List<TaskModel> tasks = [];

      for (var task in data) {
        tasks.add(TaskModel.fromJson(task));
      }
      return right(tasks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeotion(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
