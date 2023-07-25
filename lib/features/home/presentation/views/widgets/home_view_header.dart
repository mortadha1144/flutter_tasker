import 'package:flutter/material.dart';
import 'package:flutter_tasker/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today\'s Task',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              'Wednesday, 11 May',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFD5E8FA),
            foregroundColor: Colors.blue.shade800,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            context.push(AppRouter.kAddTaskView);
          },
          child: const Text('+ New Task'),
        ),
      ],
    );
  }
}
