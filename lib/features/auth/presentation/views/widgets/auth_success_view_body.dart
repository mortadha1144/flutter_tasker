import 'package:flutter/material.dart';
import 'package:flutter_tasker/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/widgets/custom_button.dart';

class AuthSuccessViewBody extends StatelessWidget {
  const AuthSuccessViewBody({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * .04),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight * .4,
        ),
        SizedBox(height: SizeConfig.screenHeight * .08),
        Text(
          '$text Success',
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        SizedBox(
          width: SizeConfig.screenWidth * .6,
          child: CustomButton(
            text: 'Go To ${text == 'Register' ? 'Login' : 'Home'}',
            onPressed: () {
              if (text == 'Login') {
                context.go('/');
              } else {
                context.go(AppRouter.kLogInView);
              }

              // Router.neglect(context, () {
              //   context.go(AppRouter.kHomeView);
              // });
              // Navigator.pushAndRemoveUntil(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const HomeView(),
              //   ),
              //   (route) => false,
              // );
            },
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
