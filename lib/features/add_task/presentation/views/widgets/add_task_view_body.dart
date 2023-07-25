import 'package:flutter/material.dart';
import 'package:flutter_tasker/features/add_task/presentation/views/widgets/dotted_category_item.dart';

import 'add_task_text_field.dart';

class AddTaskViewBody extends StatelessWidget {
  const AddTaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    const categories = [
      {
        'color': Colors.green,
        'title': 'Learning',
      },
      {
        'color': Colors.blue,
        'title': 'Working',
      },
      {
        'color': Colors.yellow,
        'title': 'General',
      },
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const CustomTitleText(text: 'Task Title'),
          const AddTaskTextField(
            text: 'Add Task Name..',
          ),
          const CustomTitleText(text: 'Description'),
          const AddTaskTextField(
            text: 'Add Description',
            height: 120,
          ),
          const SizedBox(height: 8),
          const CustomTitleText(text: 'Category'),
          Row(
            children: [
              ...List.generate(
                categories.length,
                (index) => DottedCategoryItem(
                  title: categories[index]['title'] as String,
                  color: categories[index]['color'] as Color,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CustomTitleText extends StatelessWidget {
  const CustomTitleText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}
