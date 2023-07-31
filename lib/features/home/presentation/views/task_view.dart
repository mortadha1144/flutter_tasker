import 'package:flutter/material.dart';
import 'package:flutter_tasker/features/home/data/models/task/task_model.dart';

import 'widgets/task_view_body.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key, required this.task});

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit_note),
          ),
        ],
      ),
      body:  TaskViewBody(task: task,),
    );
  }
}
