import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/core/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter_tasker/features/home/presentation/providers/view_task_provider.dart';
import 'task_view_header.dart';

class TaskViewBody extends ConsumerWidget {
  const TaskViewBody({super.key, required this.taskId});

  final int taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(viewTaskProvider(taskId));
    return state.maybeWhen(
      loaded: (task) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            TaskViewHeader(taskId: taskId),
            Text(
              task.description!,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            if (task.image != '')
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(8)),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                height: 240,
                padding: const EdgeInsets.all(4),
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'http://5.189.132.217${task.image}',
                    fit: BoxFit.fill,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset('assets/images/place_holder.png');
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
      error: (error) => Text(error),
      orElse: () => const CustomLoadingIndicator(),
    );
  }
}
