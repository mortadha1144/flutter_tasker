import 'package:flutter/material.dart';
import 'package:flutter_tasker/core/utils/size_config.dart';

import 'widgets/onboarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
