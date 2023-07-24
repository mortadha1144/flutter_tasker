import 'package:flutter_tasker/features/auth/presentation/views/auth_success_view.dart';
import 'package:flutter_tasker/features/auth/presentation/views/complete_profile_view.dart';
import 'package:flutter_tasker/features/auth/presentation/views/log_in_view.dart';
import 'package:flutter_tasker/features/auth/presentation/views/sign_up_view.dart';
import 'package:flutter_tasker/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/onboarding/presentation/views/onboarding.dart';

abstract class AppRouter {
  static const kLogInView = '/logInView';
  static const kSignUpView = '/signUpView';
  static const kCompleteProfileView = '/completeProfileView';
  static const kHomeView = '/homeView';
  static const kAuthSuccessView = '/authSuccessView';

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
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kCompleteProfileView,
        builder: (context, state) => CompleteProfileView(
          email: state.extra as String,
        ),
      ),
      GoRoute(
        path: kAuthSuccessView,
        builder: (context, state) => AuthSuccessView(
          text: state.extra as String,
        ),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
