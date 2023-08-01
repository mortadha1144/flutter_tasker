import 'package:flutter/material.dart';
import 'package:flutter_tasker/features/home/presentation/views/widgets/edit_task_form.dart';

class EditTaskViewBody extends StatelessWidget {
  const EditTaskViewBody({super.key, required this.taskId});
  final int taskId;
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            EditTaskForm(taskId: taskId),
          ],
        ),
      ),
    );
  }
}
