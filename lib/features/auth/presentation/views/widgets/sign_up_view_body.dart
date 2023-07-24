import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/size_config.dart';
import 'sign_up_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * .03,
              ),
              const Text(
                'Register Account',
                style: headingStyle,
              ),
              const Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * .07,
              ),
              const SignUpForm(),
              const SizedBox(
                height: 20,
              ),
              Text(
                'By continuing your confirm that you agree \nwith our Term and Condition',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
