import 'package:flutter/material.dart';

import '../../../../../core/utils/functions/format_date.dart';
import 'custom_text_field.dart';
import 'custom_title_text.dart';

class TaskDueDateSection extends StatelessWidget {
  const TaskDueDateSection({super.key, required this.dueDate, this.onSaved});

  final String dueDate;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTitleText(
            text: 'Due Date',
          ),
          CustomTextField(
            initialValue: formatDate(date: dueDate),
            text: 'yyyy/mm/dd',
            icon: Icons.calendar_month,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Due Date is Required';
              }
              return null;
            },
            onSaved: onSaved,
          ),
        ],
      ),
    );
  }
}
