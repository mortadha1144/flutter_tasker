import 'package:flutter/material.dart';

import 'home_view_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SizedBox(height: 20),
          HomeViewHeader(),
        ],
      ),
    );
  }
}
