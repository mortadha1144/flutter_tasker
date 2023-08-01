import 'package:flutter/material.dart';

import 'add_task_form.dart';

class AddTaskViewBody extends StatelessWidget {
  const AddTaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            AddTaskForm(),
            //const DateAndTimeSection(),
          ],
        ),
      ),
    );
  }
}



