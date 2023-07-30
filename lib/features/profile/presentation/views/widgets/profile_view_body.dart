import 'package:flutter/material.dart';
import 'package:flutter_tasker/core/utils/app_router.dart';
import 'package:flutter_tasker/core/utils/shared_prefrences.dart';
import 'package:go_router/go_router.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          await SharedPrefs.instance.remove(SharedPrefs.kAccessToken);
          await SharedPrefs.instance
              .remove(SharedPrefs.kUserData)
              .then((value) => context.go(AppRouter.kLogInView));
        },
        child: const Text('Logout'),
      ),
    );
  }
}
