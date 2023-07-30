import 'package:flutter_tasker/core/utils/constants.dart';
import 'package:flutter_tasker/features/auth/data/models/user_model.dart';
import 'package:flutter_tasker/features/auth/presentation/views/auth_success_view.dart';
import 'package:flutter_tasker/features/auth/presentation/views/complete_profile_view.dart';
import 'package:flutter_tasker/features/auth/presentation/views/log_in_view.dart';
import 'package:flutter_tasker/features/auth/presentation/views/sign_up_view.dart';
import 'package:flutter_tasker/features/add_task/presentation/views/add_task_view.dart';
import 'package:flutter_tasker/features/home/presentation/views/home_view.dart';
import 'package:flutter_tasker/features/onboarding/presentation/views/onboarding.dart';
import 'package:flutter_tasker/features/profile/presentation/views/profile_view.dart';
import 'package:go_router/go_router.dart';
import 'shared_prefrences.dart';

abstract class AppRouter {
  static const kOnBoardingView = '/OnBoardingView';
  static const kLogInView = '/logInView';
  static const kSignUpView = '/signUpView';
  static const kCompleteProfileView = '/completeProfileView';
  static const kAuthSuccessView = '/authSuccessView';
  static const kAddTaskView = '/addTaskView';
  static const kProfileView = '/profileView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          UserModel user = SharedPrefs.getUser();
          return HomeView(
            user: user,
          );
        },
      ),
      GoRoute(
        path: kOnBoardingView,
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
      // GoRoute(
      //   path: kHomeView,
      //   builder: (context, state) => const HomeView(),
      // ),
      GoRoute(
        path: kAddTaskView,
        builder: (context, state) => const AddTaskView(),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
    ],
    redirect: (context, state) {
      final bool isOnBoardingShown =
          SharedPrefs.getBool(kshowOnBoarding) ?? false;
      final bool isUserLoggedIn = checkUserAuth();
      if (!isOnBoardingShown) {
        return kOnBoardingView;
      } else if (!isUserLoggedIn) {
        return kLogInView;
      }
      return null;
    },
  );

  static bool checkUserAuth() {
    return SharedPrefs.getAccessToken() != null &&
        SharedPrefs.getAccessToken() != '';
  }
}
