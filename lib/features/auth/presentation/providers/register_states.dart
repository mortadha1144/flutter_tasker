import 'package:flutter_tasker/features/auth/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_states.freezed.dart';

extension RegisterGetters on RegisterState {
  bool get isLoading => this is _$_RegisterStateLoading;
}

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _RegisterStateInitial;
  const factory RegisterState.loading() = _RegisterStateLoading;
  const factory RegisterState.loaded(UserModel userModel) =
      _RegisterStateLoaded;
  const factory RegisterState.error(String error) = _RegisterStateError;
}
