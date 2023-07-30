import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/data/repos/home_repo.dart';
import 'add_task_state.dart';

final addTaskProvider =
    StateNotifierProvider<AddTaskNotifier, AddTaskState>((ref) {
  return AddTaskNotifier(homeRepo: HomeRepo());
});

class AddTaskNotifier extends StateNotifier<AddTaskState> {
  AddTaskNotifier({
    required HomeRepo homeRepo,
  })  : _homeRepo = homeRepo,
        super(const AddTaskState.initial());

  final HomeRepo _homeRepo;

  Future<void> addTask(Map<String, dynamic> task) async {
    state = const AddTaskState.loading();
    var result = await _homeRepo.addTask(task);
    result.fold(
      (faile) => state = AddTaskState.error(faile.errMessagel),
      (success) => state = AddTaskState.loaded(success),
    );
  }
}
