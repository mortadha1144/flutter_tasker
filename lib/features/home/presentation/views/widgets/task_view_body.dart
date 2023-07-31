import 'package:flutter/material.dart';
import 'package:flutter_tasker/features/home/data/models/task/task_model.dart';

import 'task_view_header.dart';

class TaskViewBody extends StatelessWidget {
  const TaskViewBody({super.key, required this.task});

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          TaskViewHeader(task: task),
          Text(
            task.description!,
          ),
          const SizedBox(height: 30),
          if (task.image != '')
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 240,
              child: Image.network(
                'http://5.189.132.217${task.image}',
                fit: BoxFit.fill,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset('assets/images/place_holder.png');
                },
              ),
            ),
        ],
      ),
    );
  }
}
