import 'package:flutter/material.dart';
import 'package:flutter_tasker/core/utils/widgets/custom_button.dart';

import 'widgets/add_task_view_body.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Task Todo'),
      ),
      body: const AddTaskViewBody(),
    );
  }
}
