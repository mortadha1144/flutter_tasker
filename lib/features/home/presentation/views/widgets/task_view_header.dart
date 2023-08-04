import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/core/utils/functions/format_date.dart';
import 'package:flutter_tasker/features/home/presentation/providers/view_task_provider.dart';

class TaskViewHeader extends ConsumerWidget {
  const TaskViewHeader({
    super.key,
    required this.taskId,
  });

  final int taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(viewTaskProvider(taskId));
    return state.maybeWhen(
      loaded: (task) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.title!,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: task.completed!
                      ? Colors.green.shade200
                      : Colors.red.shade200,
                  border: Border.all(
                    color: task.completed! ? Colors.green : Colors.red,
                  ),
                ),
                child: Text(
                  task.completed! ? 'completed' : 'uncompleted',
                  style: const TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          const Spacer(),
          Text(formatDate(date: task.dueDate!)),
        ],
      ),
      orElse: () => const SizedBox.shrink(),
    );
  }
}
