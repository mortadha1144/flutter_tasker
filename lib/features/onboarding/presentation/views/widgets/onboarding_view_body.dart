import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../data/static_data.dart';
import 'onboarding_action.dart';
import 'onboarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  int currentPage = 0;
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: OnBoardingPageView(
                onBoardingData: onBoardingData,
                onPageChanged: (value) => setState(() {
                  currentPage = value;
                }),
              ),
            ),
            Expanded(
              flex: 2,
              child: OnBoardingAction(
                currentPage: currentPage,
                itemCount: onBoardingData.length,
                onPressed: () {
                  context.pushReplacement(AppRouter.kLogInView);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
