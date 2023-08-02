import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/features/home/presentation/providers/states/add_task_state.dart';

import '../../../../../core/utils/functions/custom_snack_bar.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../providers/add_task_provider.dart';
import 'custom_title_text.dart';
import 'add_image_button.dart';
import 'custom_text_field.dart';

class AddTaskForm extends ConsumerStatefulWidget {
  const AddTaskForm({
    super.key,
  });

  @override
  AddTaskFormState createState() => AddTaskFormState();
}

class AddTaskFormState extends ConsumerState<AddTaskForm> {
  final _formKey = GlobalKey<FormState>();

  String? taskTitle;
  String? taskDescription;
  String? dueDate;
  String? path;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addTaskProvider);
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTitleText(text: 'Task Title'),
          CustomTextField(
            text: 'Add Task Title..',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Task Title is Required';
              }
              return null;
            },
            onSaved: (newValue) => taskTitle = newValue,
          ),
          const CustomTitleText(text: 'Description'),
          CustomTextField(
            text: 'Add Description',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Task Description is Required';
              }
              return null;
            },
            onSaved: (newValue) => taskDescription = newValue,
          ),
          const SizedBox(height: 8),
          const CustomTitleText(
            text: 'Due Date',
          ),
          SizedBox(
            width: 200,
            child: CustomTextField(
              text: 'yyyy/mm/dd',
              icon: Icons.calendar_month,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Due Date is Required';
                }
                return null;
              },
              onSaved: (newValue) => dueDate = newValue,
            ),
          ),
          const SizedBox(height: 10),
          const CustomTitleText(text: 'Add Image'),
          InkWell(
            onTap: () async {
              final result =
                  await FilePicker.platform.pickFiles(type: FileType.image);
              if (result != null) {
                setState(() {
                  path = result.files.single.path;
                });
              }
            },
            child: AddImageButton(
              path: path,
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
            text: 'Add Task',
           isLoading: state.isLoading,
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                String fileName = path ?? '/'.split('/').last;
                Map<String, dynamic> taskMap = {
                  'title': taskTitle,
                  'description': taskDescription,
                  'dueDate': dueDate,
                  'image': path != null
                      ? await MultipartFile.fromFile(
                          path!,
                          filename: fileName,
                        )
                      : null,
                };
                await ref.read(addTaskProvider.notifier).addTask(taskMap).then(
                  (value) {
                    customSnackBar(context, 'Task Added Successfully');
                    _formKey.currentState!.reset();
                    path = null;
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
