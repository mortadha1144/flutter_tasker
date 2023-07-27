import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/features/auth/data/repos/auth_repo.dart';
import 'package:flutter_tasker/features/auth/presentation/providers/auth_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

final authProvider = StateNotifierProvider<AuthProvider, AuthState>((ref) {
  return AuthProvider(authRepo: AuthRepo());
});

class AuthProvider extends StateNotifier<AuthState> {
  AuthProvider({
    required AuthRepo authRepo,
  })  : _authRepo = authRepo,
        super(const AuthState.initial());

  final AuthRepo _authRepo;

  Future<void> login(String name, String password) async {
    state = const AuthState.loading();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var result = await _authRepo.login(name, password);

    result.fold(
      (faile) => state = AuthState.error(faile.errMessagel),
      (success) async{
        await prefs.setString('token', success.token??'');
        return state = AuthState.loaded(success);
      },
    );
  }
}
