import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'register_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    String? name,
    String? email,
    String? password,
    int? age,
    String? avatar,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, Object?> json) =>
      _$RegisterModelFromJson(json);
}