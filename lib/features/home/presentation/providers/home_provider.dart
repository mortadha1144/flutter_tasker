import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/features/home/data/repos/home_repo.dart';
import 'package:flutter_tasker/features/home/presentation/providers/home_state.dart';

final homeProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifier(HomeRepo());
});

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(this._homeRepo) : super(const HomeState.initial()) {
    fetchTasks();
  }

  final HomeRepo _homeRepo;

  Future<void> fetchTasks() async {
    state = const HomeState.loading();
    var result = await _homeRepo.fetchTasks();
    result.fold(
      (faile) => state = HomeState.error(faile.errMessagel),
      (success) => state = HomeState.loaded(success),
    );
  }
}
