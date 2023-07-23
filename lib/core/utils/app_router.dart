import 'package:flutter_tasker/features/auth/presentation/views/log_in_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/onboarding/presentation/views/onboarding.dart';

abstract class AppRouter {
  static const kLogInView = '/logInView';
  

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kLogInView,
        builder: (context, state) => const LogInView(),
      ),
    ],
  );
}
