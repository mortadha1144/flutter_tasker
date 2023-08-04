import 'package:flutter_tasker/core/utils/constants.dart';
import 'package:flutter_tasker/features/auth/data/models/user_model.dart';
import 'package:flutter_tasker/features/auth/presentation/views/auth_success_view.dart';
import 'package:flutter_tasker/features/auth/presentation/views/complete_profile_view.dart';
import 'package:flutter_tasker/features/auth/presentation/views/log_in_view.dart';
import 'package:flutter_tasker/features/auth/presentation/views/sign_up_view.dart';
import 'package:flutter_tasker/features/home/data/models/task/task_model.dart';
import 'package:flutter_tasker/features/home/presentation/views/add_task_view.dart';
import 'package:flutter_tasker/features/home/presentation/views/edit_task.dart';
import 'package:flutter_tasker/features/home/presentation/views/home_view.dart';
import 'package:flutter_tasker/features/home/presentation/views/view_task.dart';
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
  static const kTaskView = '/taskView';
  static const kEditTaskView = '/editTaskView';

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
        path: kAuthSuccessView,
        builder: (context, state) => AuthSuccessView(
          text: state.extra as String,
        ),
      ),
      GoRoute(
        path: kCompleteProfileView,
        builder: (context, state) => CompleteProfileView(
          email: state.extra as String,
        ),
      ),
      GoRoute(
        path: kAddTaskView,
        builder: (context, state) => const AddTaskView(),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: kTaskView,
        builder: (context, state) => TaskView(
          taskId: state.extra as int,
        ),
      ),
      GoRoute(
        path: kEditTaskView,
        builder: (context, state) =>
            EditTaskView(task: state.extra as TaskModel),
      ),
    ],
    redirect: (context, state) {
      bool isGoToRegister = state.matchedLocation == kSignUpView;
      bool isGoToRegisterSuccess = state.matchedLocation == kAuthSuccessView;
      final bool isOnBoardingShown =
          SharedPrefs.getBool(kshowOnBoarding) ?? false;
      final bool isUserLoggedIn = checkUserAuth();
      if (!isOnBoardingShown) {
        return kOnBoardingView;
      } else if (!isUserLoggedIn && !isGoToRegister && !isGoToRegisterSuccess) {
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
