import 'package:flutter/material.dart';
import 'package:flutter_tasker/features/home/presentation/views/widgets/home_view_list_view_item.dart';

import 'home_view_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const HomeViewHeader(),
            const SizedBox(height: 20),
            ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) => const HomeViewListViewItem(),
            )
          ],
        ),
      ),
    );
  }
}
