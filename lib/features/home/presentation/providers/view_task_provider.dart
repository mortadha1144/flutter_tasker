import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/features/home/data/models/task/task_model.dart';
import 'package:flutter_tasker/features/home/data/repos/home_repo.dart';
import 'package:flutter_tasker/features/home/presentation/providers/home_provider.dart';

import 'states/edit_task_state.dart';

final viewTaskProvider =
    StateNotifierProvider.family<ViewTaskNotifier, EditTaskState, int>(
  (ref, id) {
    TaskModel task = ref.watch(homeProvider.notifier).getTask(id);
    return ViewTaskNotifier(HomeRepo(), ref, task);
  },
);

class ViewTaskNotifier extends StateNotifier<EditTaskState> {
  ViewTaskNotifier(this.homeRepo, this.ref,TaskModel task)
      : super( EditTaskState.loaded(task));

  Ref ref;

  TaskModel? _task;

  HomeRepo homeRepo;

  Future<void> getTask(int id) async {
    state = const EditTaskState.loading();
    var result = await homeRepo.getTask(id);

    result.fold(
      (error) => state = EditTaskState.error(error.errMessagel),
      (success) => state = EditTaskState.loaded(success),
    );
  }

  Future<void> updatTask(TaskModel task, String? path) async {
    state = const EditTaskState.loading();
    var result = await homeRepo.updateTask(task: task, path: path);

    result.fold(
      (fail) => state = EditTaskState.error(fail.errMessagel),
      (success) async {
        await getTask(task.id!);
        _task = state.whenOrNull(
          loaded: (task) => _task = task,
        );
        ref.read(homeProvider.notifier).updateTask(_task!);
      },
    );
  }
}
