import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tasker/core/utils/app_router.dart';
import 'package:flutter_tasker/core/utils/shared_prefrences.dart';
import 'package:flutter_tasker/features/auth/data/models/user_model.dart';
import 'package:go_router/go_router.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: ListTile(
          leading: GestureDetector(
            onTap: () {
              context.push(AppRouter.kProfileView);
            },
            child: CircleAvatar(
              backgroundColor: Colors.amber.shade300,
              radius: 25,
              backgroundImage:
                  const AssetImage('assets/images/profile_test.jpg'),
            ),
          ),
          title: Text(
            'Hello',
            style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
          ),
          subtitle: Text(
            user.name!,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.calendar),
                ),
                IconButton(
                  onPressed: () {
                    String userPref = SharedPrefs.instance.getString('user')!;
                    Map<String, dynamic> userMap =
                        jsonDecode(userPref) as Map<String, dynamic>;
                    //var data = SharedPrefs.instance.getKeys();
                    print(userMap);
                  },
                  icon: const Icon(CupertinoIcons.bell),
                ),
              ],
            ),
          )
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
