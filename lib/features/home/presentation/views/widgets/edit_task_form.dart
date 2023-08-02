import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/core/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter_tasker/features/home/presentation/providers/view_task_provider.dart';
import 'package:flutter_tasker/features/home/presentation/views/widgets/custom_text_field.dart';

import '../../../../../core/utils/widgets/custom_button.dart';
import 'add_image_button.dart';
import 'custom_title_text.dart';

class EditTaskForm extends ConsumerStatefulWidget {
  const EditTaskForm({
    required this.taskId,
    super.key,
  });

  final int taskId;

  @override
  EditTaskFormState createState() => EditTaskFormState();
}

class EditTaskFormState extends ConsumerState<EditTaskForm> {
  final _formKey = GlobalKey<FormState>();

  String? path;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(viewTaskProvider(widget.taskId));
    return state.maybeWhen(
      loaded: (task) => Form(
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
              onSaved: (newValue) =>
                  task = task.copyWith(description: newValue),
            ),
            const CustomTitleText(text: 'Task is'),
            SizedBox(
              width: 200,
              child: DropdownButtonFormField(
                value: task.completed ?? false ? 'Completed' : 'Uncompleted',
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
                onChanged: (value) {
                  bool newValue = value == 'Completed' ? true : false;
                },
              ),
            ),
            const SizedBox(height: 10),
            const CustomTitleText(
              text: 'Due Date',
            ),
            SizedBox(
              width: 200,
              child: CustomTextField(
                initialValue: task.dueDate,
                text: 'yyyy/mm/dd',
                icon: Icons.calendar_month,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Due Date is Required';
                  }
                  return null;
                },
                onSaved: (newValue) => task = task.copyWith(dueDate: newValue),
              ),
            ),
            const SizedBox(height: 10),
            const CustomTitleText(text: 'Task Image'),
            task.image != ''
                ? ImageViewer(imageUrl: task.image!)
                : InkWell(
                    onTap: () async {
                      final result = await FilePicker.platform
                          .pickFiles(type: FileType.image);
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
              text: 'Save',
              //isLoading: state.isLoading,
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  String fileName = path ?? '/'.split('/').last;
                  Map<String, dynamic> taskMap = {
                    'title': task.title,
                    'description': task.description,
                    'dueDate': task.dueDate,
                  };
                  if (path != null) {
                    taskMap.addEntries({
                      'image': await MultipartFile.fromFile(
                        path!,
                        filename: fileName,
                      )
                    }.entries);
                  }
                }
              },
            ),
          ],
        ),
      ),
      error: (error) => Center(child: Text(error)),
      orElse: () => const CustomLoadingIndicator(),
    );
  }
}

class ImageViewer extends StatelessWidget {
  const ImageViewer({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.network('http://5.189.132.217$imageUrl'),
    );
  }
}
