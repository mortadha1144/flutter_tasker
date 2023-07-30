import 'package:flutter_tasker/features/auth/data/models/auth_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

extension AuthGetters on AuthState {
  bool get isLoading => this is _$_AuthStateLoading;
}

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthStateInitial;
  const factory AuthState.loading() = _AuthStateLoading;
  const factory AuthState.loaded(AuthModel authModel) = _AuthStateLoaded;
  const factory AuthState.error(String error) = _AuthStateError;
}
