import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/features/auth/data/models/register_model.dart';
import 'package:flutter_tasker/features/auth/data/repos/auth_repo.dart';
import 'package:flutter_tasker/features/auth/presentation/providers/register_states.dart';

final registerProvider =
    StateNotifierProvider<RegisterProvider, RegisterState>((ref) {
  return RegisterProvider(authRepo: AuthRepo());
});

class RegisterProvider extends StateNotifier<RegisterState> {
  RegisterProvider({
    required AuthRepo authRepo,
  })  : _authRepo = authRepo,
        super(const RegisterState.initial());

  final AuthRepo _authRepo;

  Future<void> register(RegisterModel registerModel) async {
    state = const RegisterState.loading();
    var result = await _authRepo.register(registerModel.toJson());

    result.fold(
      (faile) => state = RegisterState.error(faile.errMessage),
      (success) => state = RegisterState.loaded(success),
    );
  }
}
