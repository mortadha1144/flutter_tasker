import 'package:flutter/material.dart';

import 'custom_title_text.dart';

class TaskCompletedSection extends StatelessWidget {
  const TaskCompletedSection(
      {super.key, required this.isCompleted, this.onChanged});

  final bool isCompleted;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTitleText(text: 'Task is'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 11),
              ),
              value: isCompleted ? 'Completed' : 'Uncompleted',
              items: const [
                DropdownMenuItem(
                  value: 'Completed',
                  child: Text('Completed'),
                ),
                DropdownMenuItem(
                  value: 'Uncompleted',
                  child: Text('Uncompleted'),
                ),
              ],
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
