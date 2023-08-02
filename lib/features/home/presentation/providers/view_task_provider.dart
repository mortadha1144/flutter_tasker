import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/features/home/data/models/task/task_model.dart';
import 'package:flutter_tasker/features/home/data/repos/home_repo.dart';
import 'package:flutter_tasker/features/home/presentation/providers/home_provider.dart';

import 'states/edit_task_state.dart';

final viewTaskProvider =
    StateNotifierProvider.family<ViewTaskNotifier, EditTaskState, int>(
        (ref, id) {
  return ViewTaskNotifier(HomeRepo(), id);
});

class ViewTaskNotifier extends StateNotifier<EditTaskState> {
  ViewTaskNotifier(this.homeRepo, id) : super(const EditTaskState.initial()) {
    getTask(id);
  }

  TaskModel? task;

  HomeRepo homeRepo;

  Future<void> getTask(int id) async {
    state = const EditTaskState.loading();
    var result = await homeRepo.getTask(id);

    result.fold(
      (error) => state = EditTaskState.error(error.errMessagel),
      (success) => state = EditTaskState.loaded(success),
    );
  }
}
