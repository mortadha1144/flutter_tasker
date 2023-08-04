import 'package:flutter/material.dart';
import 'package:flutter_tasker/features/home/data/models/task/task_model.dart';

import '../../../../../core/utils/functions/format_date.dart';

class HomeViewListViewItem extends StatelessWidget {
  const HomeViewListViewItem({
    super.key,
    required this.task,
    required this.onTap,
    this.onTapCheckBox,
  });

  final TaskModel task;
  final VoidCallback onTap;
  final void Function(bool?)? onTapCheckBox;

  @override
  Widget build(BuildContext context) {
    // final File file = File(widget.task.image);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 120,
        //margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 12,
              decoration: BoxDecoration(
                  color: task.completed ?? false
                      ? Colors.green.shade200
                      : Colors.red.shade400,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8))),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        task.title!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        task.description!,
                        style: const TextStyle(fontSize: 12),
                      ),
                      trailing: Checkbox(
                        value: task.completed,
                        shape: const CircleBorder(),
                        onChanged: onTapCheckBox,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -12),
                      child: Column(
                        children: [
                          Divider(
                            thickness: 1.5,
                            color: Colors.grey.shade200,
                          ),
                          Row(
                            children: [
                              const Text(
                                'Due Date : ',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                formatDate(
                                    date:
                                        task.dueDate ?? '2023-09-01T00:00:00'),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
