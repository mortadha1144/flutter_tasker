// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateInitial value)? initial,
    TResult? Function(_HomeStateLoading value)? loading,
    TResult? Function(_HomeStateLoaded value)? loaded,
    TResult? Function(_HomeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomeStateInitialCopyWith<$Res> {
  factory _$$_HomeStateInitialCopyWith(
          _$_HomeStateInitial value, $Res Function(_$_HomeStateInitial) then) =
      __$$_HomeStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeStateInitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeStateInitial>
    implements _$$_HomeStateInitialCopyWith<$Res> {
  __$$_HomeStateInitialCopyWithImpl(
      _$_HomeStateInitial _value, $Res Function(_$_HomeStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeStateInitial implements _HomeStateInitial {
  const _$_HomeStateInitial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? loaded,
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
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateInitial value)? initial,
    TResult? Function(_HomeStateLoading value)? loading,
    TResult? Function(_HomeStateLoaded value)? loaded,
    TResult? Function(_HomeStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeStateInitial implements HomeState {
  const factory _HomeStateInitial() = _$_HomeStateInitial;
}

/// @nodoc
abstract class _$$_HomeStateLoadingCopyWith<$Res> {
  factory _$$_HomeStateLoadingCopyWith(
          _$_HomeStateLoading value, $Res Function(_$_HomeStateLoading) then) =
      __$$_HomeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeStateLoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeStateLoading>
    implements _$$_HomeStateLoadingCopyWith<$Res> {
  __$$_HomeStateLoadingCopyWithImpl(
      _$_HomeStateLoading _value, $Res Function(_$_HomeStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeStateLoading implements _HomeStateLoading {
  const _$_HomeStateLoading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? loaded,
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
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateInitial value)? initial,
    TResult? Function(_HomeStateLoading value)? loading,
    TResult? Function(_HomeStateLoaded value)? loaded,
    TResult? Function(_HomeStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeStateLoading implements HomeState {
  const factory _HomeStateLoading() = _$_HomeStateLoading;
}

/// @nodoc
abstract class _$$_HomeStateLoadedCopyWith<$Res> {
  factory _$$_HomeStateLoadedCopyWith(
          _$_HomeStateLoaded value, $Res Function(_$_HomeStateLoaded) then) =
      __$$_HomeStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskModel> tasks});
}

/// @nodoc
class __$$_HomeStateLoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeStateLoaded>
    implements _$$_HomeStateLoadedCopyWith<$Res> {
  __$$_HomeStateLoadedCopyWithImpl(
      _$_HomeStateLoaded _value, $Res Function(_$_HomeStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$_HomeStateLoaded(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

class _$_HomeStateLoaded implements _HomeStateLoaded {
  const _$_HomeStateLoaded(final List<TaskModel> tasks) : _tasks = tasks;

  final List<TaskModel> _tasks;
  @override
  List<TaskModel> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'HomeState.loaded(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStateLoaded &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateLoadedCopyWith<_$_HomeStateLoaded> get copyWith =>
      __$$_HomeStateLoadedCopyWithImpl<_$_HomeStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateInitial value)? initial,
    TResult? Function(_HomeStateLoading value)? loading,
    TResult? Function(_HomeStateLoaded value)? loaded,
    TResult? Function(_HomeStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HomeStateLoaded implements HomeState {
  const factory _HomeStateLoaded(final List<TaskModel> tasks) =
      _$_HomeStateLoaded;

  List<TaskModel> get tasks;
  @JsonKey(ignore: true)
  _$$_HomeStateLoadedCopyWith<_$_HomeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeStateErrorCopyWith<$Res> {
  factory _$$_HomeStateErrorCopyWith(
          _$_HomeStateError value, $Res Function(_$_HomeStateError) then) =
      __$$_HomeStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_HomeStateErrorCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeStateError>
    implements _$$_HomeStateErrorCopyWith<$Res> {
  __$$_HomeStateErrorCopyWithImpl(
      _$_HomeStateError _value, $Res Function(_$_HomeStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_HomeStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeStateError implements _HomeStateError {
  const _$_HomeStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateErrorCopyWith<_$_HomeStateError> get copyWith =>
      __$$_HomeStateErrorCopyWithImpl<_$_HomeStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? loaded,
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
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateInitial value)? initial,
    TResult? Function(_HomeStateLoading value)? loading,
    TResult? Function(_HomeStateLoaded value)? loaded,
    TResult? Function(_HomeStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HomeStateError implements HomeState {
  const factory _HomeStateError(final String error) = _$_HomeStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_HomeStateErrorCopyWith<_$_HomeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
