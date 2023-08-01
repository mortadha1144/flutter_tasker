import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/features/home/presentation/providers/home_provider.dart';

import '../../../home/data/repos/home_repo.dart';
import 'add_task_state.dart';

final addTaskProvider =
    StateNotifierProvider<AddTaskNotifier, AddTaskState>((ref) {
  return AddTaskNotifier(homeRepo: HomeRepo(), ref: ref);
});

class AddTaskNotifier extends StateNotifier<AddTaskState> {
  AddTaskNotifier({required this.homeRepo, required this.ref})
      : super(const AddTaskState.initial());

  final HomeRepo homeRepo;

  final Ref ref;

  Future<void> addTask(Map<String, dynamic> task) async {
    state = const AddTaskState.loading();
    var result = await homeRepo.addTask(task);
    result.fold(
      (faile) => state = AddTaskState.error(faile.errMessagel),
      (success) {
        state = AddTaskState.loaded(success);
        ref.read(homeProvider.notifier).fetchTasks();
      },
    );
  }
}
