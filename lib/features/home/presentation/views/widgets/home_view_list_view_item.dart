import 'package:flutter/material.dart';
import 'package:flutter_tasker/features/home/data/models/task/task_model.dart';

import '../../../../../core/utils/functions/format_date.dart';

class HomeViewListViewItem extends StatefulWidget {
  const HomeViewListViewItem({
    super.key,
    required this.task,
    required this.onTap,
  });

  final TaskModel task;
  final VoidCallback onTap;

  @override
  State<HomeViewListViewItem> createState() => _HomeViewListViewItemState();
}

class _HomeViewListViewItemState extends State<HomeViewListViewItem> {
  bool isComplete = false;
  @override
  Widget build(BuildContext context) {
    // final File file = File(widget.task.image);
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        height: 120,
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 12,
              decoration: BoxDecoration(
                  color: Colors.green.shade200,
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
                        widget.task.title!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        widget.task.description!,
                        style: const TextStyle(fontSize: 12),
                      ),
                      trailing: Checkbox(
                        value: widget.task.completed,
                        shape: const CircleBorder(),
                        onChanged: (value) {
                          setState(() {
                            isComplete = value!;
                          });
                        },
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
                                    date: widget.task.dueDate ??
                                        '2023-09-01T00:00:00'),
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
