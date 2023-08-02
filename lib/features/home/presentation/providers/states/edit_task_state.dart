import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/task/task_model.dart';


part 'edit_task_state.freezed.dart';

extension EditTaskGetters on EditTaskState {
  bool get isLoading => this is _$_EditTaskStateLoading;
}
@freezed
class EditTaskState with _$EditTaskState{
  const factory EditTaskState.initial() = _EditTaskStateInitial;
  const factory EditTaskState.loading() = _EditTaskStateLoading;
  const factory EditTaskState.loaded(TaskModel task) = _EditTaskStateLoaded;
  const factory EditTaskState.error(String error) = _EditTaskStateError;
}