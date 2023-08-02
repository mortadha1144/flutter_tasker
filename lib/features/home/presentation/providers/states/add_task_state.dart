import 'package:flutter_tasker/features/home/data/models/task/task_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_task_state.freezed.dart';

extension AddTaskGetters on AddTaskState {
  bool get isLoading => this is _$_AddTaskStateLoading;
}

@freezed
abstract class AddTaskState with _$AddTaskState {
  const factory AddTaskState.initial() = _AddTaskStateInitial;
  const factory AddTaskState.loading() = _AddTaskStateLoading;
  const factory AddTaskState.loaded(TaskModel task) = _AddTaskStateLoaded;
  const factory AddTaskState.error(String error) = _AddTaskStateError;
}