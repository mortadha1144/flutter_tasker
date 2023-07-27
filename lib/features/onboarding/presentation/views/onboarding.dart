import 'package:flutter/material.dart';
import 'package:flutter_tasker/core/utils/size_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'widgets/onboarding_view_body.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

@override
void initState() async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('showOnBoarding', true);
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
