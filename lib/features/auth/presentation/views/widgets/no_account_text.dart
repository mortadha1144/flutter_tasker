import 'package:flutter/material.dart';
import 'package:flutter_tasker/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don’t have an account?',
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap: () {
            context.push(AppRouter.kSignUpView);
          },
          child: const Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 16,
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
