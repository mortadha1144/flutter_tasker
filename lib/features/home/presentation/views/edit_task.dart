import 'package:flutter/material.dart';
import 'package:flutter_tasker/features/home/presentation/views/widgets/edit_task_view_body.dart';

class EditTaskView extends StatelessWidget {
  const EditTaskView({super.key, required this.taskId});

  final int taskId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Task Data'),
      ),
      body: EditTaskViewBody(taskId: taskId),
    );
  }
}
