import 'package:flutter/material.dart';
import 'package:flutter_tasker/core/utils/functions/format_date.dart';
import 'package:flutter_tasker/features/home/data/models/task/task_model.dart';

class TaskViewHeader extends StatelessWidget {
  const TaskViewHeader({
    super.key,
    required this.task,
  });

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.title!,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: task.completed! ? Colors.green : Colors.red,
                ),
              ),
              child: Text(
                task.completed! ? 'completed' : 'uncompleted',
                style: const TextStyle(color: Colors.black54),
              ),
            )
          ],
        ),
        const Spacer(),
        Text(formatDate(date: task.dueDate!))
      ],
    );
  }
}
