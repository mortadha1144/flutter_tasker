import 'package:flutter/material.dart';
import 'package:flutter_tasker/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';

import 'widgets/task_view_body.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key, required this.taskId});

  final int taskId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.push(
                AppRouter.kEditTaskView,
                extra: taskId,
              );
            },
            icon: const Icon(Icons.edit_note),
          ),
        ],
      ),
      body: TaskViewBody(
        taskId: taskId,
      ),
    );
  }
}
