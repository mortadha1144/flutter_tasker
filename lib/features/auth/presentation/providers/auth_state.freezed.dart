// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthModel authModel) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthModel authModel)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthModel authModel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateLoaded value) loaded,
    required TResult Function(_AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateLoaded value)? loaded,
    TResult? Function(_AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateLoaded value)? loaded,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthStateInitialCopyWith<$Res> {
  factory _$$_AuthStateInitialCopyWith(
          _$_AuthStateInitial value, $Res Function(_$_AuthStateInitial) then) =
      __$$_AuthStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateInitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateInitial>
    implements _$$_AuthStateInitialCopyWith<$Res> {
  __$$_AuthStateInitialCopyWithImpl(
      _$_AuthStateInitial _value, $Res Function(_$_AuthStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateInitial implements _AuthStateInitial {
  const _$_AuthStateInitial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthModel authModel) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthModel authModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthModel authModel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateLoaded value) loaded,
    required TResult Function(_AuthStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateLoaded value)? loaded,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateLoaded value)? loaded,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthStateInitial implements AuthState {
  const factory _AuthStateInitial() = _$_AuthStateInitial;
}

/// @nodoc
abstract class _$$_AuthStateLoadingCopyWith<$Res> {
  factory _$$_AuthStateLoadingCopyWith(
          _$_AuthStateLoading value, $Res Function(_$_AuthStateLoading) then) =
      __$$_AuthStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateLoading>
    implements _$$_AuthStateLoadingCopyWith<$Res> {
  __$$_AuthStateLoadingCopyWithImpl(
      _$_AuthStateLoading _value, $Res Function(_$_AuthStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateLoading implements _AuthStateLoading {
  const _$_AuthStateLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthModel authModel) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthModel authModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthModel authModel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateLoaded value) loaded,
    required TResult Function(_AuthStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateLoaded value)? loaded,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateLoaded value)? loaded,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthStateLoading implements AuthState {
  const factory _AuthStateLoading() = _$_AuthStateLoading;
}

/// @nodoc
abstract class _$$_AuthStateLoadedCopyWith<$Res> {
  factory _$$_AuthStateLoadedCopyWith(
          _$_AuthStateLoaded value, $Res Function(_$_AuthStateLoaded) then) =
      __$$_AuthStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthModel authModel});

  $AuthModelCopyWith<$Res> get authModel;
}

/// @nodoc
class __$$_AuthStateLoadedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateLoaded>
    implements _$$_AuthStateLoadedCopyWith<$Res> {
  __$$_AuthStateLoadedCopyWithImpl(
      _$_AuthStateLoaded _value, $Res Function(_$_AuthStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authModel = null,
  }) {
    return _then(_$_AuthStateLoaded(
      null == authModel
          ? _value.authModel
          : authModel // ignore: cast_nullable_to_non_nullable
              as AuthModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthModelCopyWith<$Res> get authModel {
    return $AuthModelCopyWith<$Res>(_value.authModel, (value) {
      return _then(_value.copyWith(authModel: value));
    });
  }
}

/// @nodoc

class _$_AuthStateLoaded implements _AuthStateLoaded {
  const _$_AuthStateLoaded(this.authModel);

  @override
  final AuthModel authModel;

  @override
  String toString() {
    return 'AuthState.loaded(authModel: $authModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateLoaded &&
            (identical(other.authModel, authModel) ||
                other.authModel == authModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateLoadedCopyWith<_$_AuthStateLoaded> get copyWith =>
      __$$_AuthStateLoadedCopyWithImpl<_$_AuthStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthModel authModel) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(authModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthModel authModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(authModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthModel authModel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(authModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateLoaded value) loaded,
    required TResult Function(_AuthStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateLoaded value)? loaded,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateLoaded value)? loaded,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AuthStateLoaded implements AuthState {
  const factory _AuthStateLoaded(final AuthModel authModel) =
      _$_AuthStateLoaded;

  AuthModel get authModel;
  @JsonKey(ignore: true)
  _$$_AuthStateLoadedCopyWith<_$_AuthStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthStateErrorCopyWith<$Res> {
  factory _$$_AuthStateErrorCopyWith(
          _$_AuthStateError value, $Res Function(_$_AuthStateError) then) =
      __$$_AuthStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_AuthStateErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateError>
    implements _$$_AuthStateErrorCopyWith<$Res> {
  __$$_AuthStateErrorCopyWithImpl(
      _$_AuthStateError _value, $Res Function(_$_AuthStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AuthStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthStateError implements _AuthStateError {
  const _$_AuthStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateErrorCopyWith<_$_AuthStateError> get copyWith =>
      __$$_AuthStateErrorCopyWithImpl<_$_AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthModel authModel) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthModel authModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthModel authModel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInitial value) initial,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateLoaded value) loaded,
    required TResult Function(_AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInitial value)? initial,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateLoaded value)? loaded,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInitial value)? initial,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateLoaded value)? loaded,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthStateError implements AuthState {
  const factory _AuthStateError(final String error) = _$_AuthStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_AuthStateErrorCopyWith<_$_AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
