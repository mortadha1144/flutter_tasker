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

      return right(tasks.reversed.toList());
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeotion(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, void>> updateTask(
      {required TaskModel task,String? path}) async {
        
    Map<String, dynamic> taskMap = task.toJson();

    if (path != null) {
      String fileName = path.split('/').last;
      MultipartFile multiPartFile = await MultipartFile.fromFile(
                      path,
                      filename: fileName,
                    );
      taskMap.update(
        'image',
        (value)  =>  multiPartFile,
      );
    } 
    FormData formData = FormData.fromMap(taskMap);
    try {
      await _apiService.put(
          endPoint: 'Tasks/${task.id}',
          data: formData,
          options: Options(
            headers: {'Authorization': 'Bearer $token'},
            contentType: Headers.multipartFormDataContentType,
          ));

      return right(null);
    } catch (e) {
      print(e.toString());
      if (e is DioException) {
        return left(ServerFailure.fromDioExeotion(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, TaskModel>> getTask(int id) async {
    try {
      var data = await _apiService.get(
        endPoin: 'Tasks/$id',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );
      return right(TaskModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioExeotion(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
