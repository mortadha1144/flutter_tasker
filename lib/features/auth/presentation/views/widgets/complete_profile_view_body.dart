import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/size_config.dart';
import 'complete_profile_form.dart';

class CompleteProfileViewBody extends StatelessWidget {
  const CompleteProfileViewBody({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * .02),
              const Text(
                'Complete Profile',
                style: headingStyle,
              ),
              const Text(
                'Complete your details or continue  \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * .05),
              CompleteProfileForm(
                email: email,
              ),
              const SizedBox(height: 30),
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
