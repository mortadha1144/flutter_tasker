import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/core/utils/app_router.dart';
import 'package:flutter_tasker/features/home/presentation/providers/view_task_provider.dart';
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
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final state = ref.watch(viewTaskProvider(taskId));
              return state.maybeWhen(
                loaded: (task) => IconButton(
                  onPressed: () {
                    context.push(
                      AppRouter.kEditTaskView,
                      extra: task,
                    );
                  },
                  icon: const Icon(Icons.edit_note),
                ),
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ],
      ),
      body: TaskViewBody(
        taskId: taskId,
      ),
    );
  }
}
