import 'package:flutter/material.dart';

import 'add_task_text_field.dart';
import 'add_task_view_body.dart';

class DateAndTimeSection extends StatelessWidget {
  const DateAndTimeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitleText(text: 'Date'),
              AddTaskTextField(
                text: 'dd/mm/yy',
                icon: Icons.calendar_month,
              )
            ],
          ),
        ),
        SizedBox(width: 28),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitleText(text: 'Date'),
              AddTaskTextField(
                text: 'hh : mm',
                icon: Icons.watch_later_outlined,
              )
            ],
          ),
        ),
      ],
    );
  }
}