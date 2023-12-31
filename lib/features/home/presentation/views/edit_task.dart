import 'package:flutter/material.dart';
import 'package:flutter_tasker/features/home/presentation/views/widgets/edit_task_view_body.dart';

import '../../data/models/task/task_model.dart';

class EditTaskView extends StatelessWidget {
  const EditTaskView({super.key, required this.task});

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Task Data'),
      ),
      body: EditTaskViewBody(task: task),
    );
  }
}
