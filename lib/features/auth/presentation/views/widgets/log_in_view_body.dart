import 'package:flutter/material.dart';
import 'package:flutter_tasker/core/utils/constants.dart';

import '../../../../../core/utils/size_config.dart';
import 'log_in_form.dart';
import 'no_account_text.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * .04,
              ),
              const Text(
                'Welcome Back',
                style: headingStyle,
              ),
              const Text(
                'Log in with your name and password',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * .08),
              const LogInForm(),
              const SizedBox(height: 20),
              const NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
