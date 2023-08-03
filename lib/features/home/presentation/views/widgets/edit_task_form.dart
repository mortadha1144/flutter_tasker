import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/core/utils/functions/custom_snack_bar.dart';
import 'package:flutter_tasker/features/home/data/models/task/task_model.dart';
import 'package:flutter_tasker/features/home/presentation/providers/states/edit_task_state.dart';
import 'package:flutter_tasker/features/home/presentation/providers/view_task_provider.dart';
import 'package:flutter_tasker/features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import 'add_image_button.dart';
import 'custom_title_text.dart';
import 'task_completed_section.dart';
import 'task_edit_due_date_setion.dart';

class EditTaskForm extends StatefulWidget {
  const EditTaskForm({
    required this.task,
    super.key,
  });

  final TaskModel task;

  @override
  State<EditTaskForm> createState() => _EditTaskFormState();
}

class _EditTaskFormState extends State<EditTaskForm> {
  final _formKey = GlobalKey<FormState>();

  late TaskModel task;

  String? path;

  @override
  void initState() {
    super.initState();
    task = widget.task;
  }

  @override
  Widget build(BuildContext context) {
    //final state = ref.watch(viewTaskProvider(widget.taskId));
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTitleText(text: 'Task Title'),
          CustomTextField(
            initialValue: task.title,
            text: 'Task Title..',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Task Title is Required';
              }
              return null;
            },
            onSaved: (newValue) => task = task.copyWith(title: newValue),
          ),
          const CustomTitleText(text: 'Description'),
          CustomTextField(
            initialValue: task.description,
            text: 'Task Description',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Task Description is Required';
              }
              return null;
            },
            onSaved: (newValue) => task = task.copyWith(description: newValue),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              TaskCompletedSection(
                isCompleted: task.completed ?? false,
                onChanged: (value) {
                  bool newValue = value == 'Completed' ? true : false;
                  task = task.copyWith(completed: newValue);
                },
              ),
              const SizedBox(width: 10),
              TaskDueDateSection(
                dueDate: task.dueDate!,
                onSaved: (newValue) => task = task.copyWith(dueDate: newValue),
              )
            ],
          ),
          const SizedBox(height: 10),
          const CustomTitleText(text: 'Task Image'),
          // task.image != ''
          //     ? ImageViewer(
          //         imageUrl: task.image!,
          //         onPressed: () {
          //           setState(() {
          //             task = task.copyWith(image: '');
          //           });
          //         },
          //       )
          //     :
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
              onPressed: () {
                setState(() {
                  path = null;
                });
              },
            ),
          ),
          const SizedBox(height: 20),
          Consumer(
            builder: (context, ref, child) {
              final state = ref.watch(viewTaskProvider(widget.task.id!));
              return CustomButton(
                text: 'Save',
                isLoading: state.isLoading,
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    await ref
                        .read(viewTaskProvider(widget.task.id!).notifier)
                        .updatTask(task, path)
                        .then((value) {
                      context.pop();
                      customSnackBar(context, 'Task Updated Successfully');
                    });
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
