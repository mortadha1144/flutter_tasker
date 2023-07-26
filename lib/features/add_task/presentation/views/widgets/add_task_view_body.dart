import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_button.dart';
import 'add_image_button.dart';
import 'add_task_text_field.dart';

class AddTaskViewBody extends StatelessWidget {
  const AddTaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            AddTaskForm(),
            //const DateAndTimeSection(),
          ],
        ),
      ),
    );
  }
}

class AddTaskForm extends StatefulWidget {
  const AddTaskForm({
    super.key,
  });

  @override
  State<AddTaskForm> createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTitleText(text: 'Task Title'),
          AddTaskTextField(
            text: 'Add Task Name..',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Task Title is Required';
              }
              return null;
            },
          ),
          const CustomTitleText(text: 'Description'),
          AddTaskTextField(
            text: 'Add Description',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Task Description is Required';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          const CustomTitleText(
            text: 'Due Date',
          ),
          SizedBox(
            width: 200,
            child: AddTaskTextField(
              text: 'dd/mm/yy',
              icon: Icons.calendar_month,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Due Date is Required';
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 10),
          const CustomTitleText(text: 'Add Image'),
          const AddImageButton(),
          CustomButton(
            text: 'Add Task',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
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
