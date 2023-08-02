import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/task/task_model.dart';

part 'home_state.freezed.dart';

extension HomeGetters on HomeState {
  bool get isLoading => this is _$_HomeStateLoading;
}

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _HomeStateInitial;
  const factory HomeState.loading() = _HomeStateLoading;
  const factory HomeState.loaded(List<TaskModel> tasks) = _HomeStateLoaded;
  const factory HomeState.error(String error) = _HomeStateError;
}