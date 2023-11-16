import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/features/home/data/models/task/task_model.dart';
import 'package:flutter_tasker/features/home/data/repos/home_repo.dart';

import 'states/home_state.dart';

final homeProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifier(HomeRepo());
});

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(this._homeRepo) : super(const HomeState.initial()) {
    fetchTasks();
  }

  final HomeRepo _homeRepo;

  List<TaskModel> tasks = [];

  TaskModel? task;

  TaskModel getTask(int id) => tasks.firstWhere((element) => element.id == id);

  updateTask(TaskModel task) {
    final int index = tasks.indexWhere((element) => element.id == task.id);
    tasks[index] = task;
    state = HomeState.loaded(tasks);
  }

  Future<void> fetchTasks() async {
    state = const HomeState.loading();
    var result = await _homeRepo.fetchTasks();
    result.fold(
      (faile) => state = HomeState.error(faile.errMessage),
      (success) {
        tasks.addAll(success);
        state = HomeState.loaded(success);
      },
    );
  }

  Future<void> updateIsCompleted(int index, bool newValue) async {
    TaskModel newTask = tasks[index].copyWith(completed: newValue);
    var result = await _homeRepo.updateIsCompleted(newTask);
    result.fold(
      (fail) => null,
      (success) async {
        var getTask = await _homeRepo.getTask(newTask.id!);
        getTask.fold((fail) => null, (success) {
          tasks[index] = success;
          state = HomeState.loaded(tasks);
        });
      },
    );
  }

  Future<void> deleteTask(int id) async {
    var result = await _homeRepo.deleteTask(id);
    result.fold((fail) => null, (success) {
      tasks.removeWhere((element) => element.id == id);
      state = HomeState.loaded(tasks);
    });
  }
}
