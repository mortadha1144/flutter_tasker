import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class AddImageButton extends StatefulWidget {
  const AddImageButton({
    super.key,
  });

  @override
  State<AddImageButton> createState() => _AddImageButtonState();
}

class _AddImageButtonState extends State<AddImageButton> {
  String? path;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final result =
            await FilePicker.platform.pickFiles(type: FileType.image);
        if (result != null) {
          setState(() {
            path = result.files.single.path;
          });
        }
      },
      child: path == null
          ? Container(
              width: 180,
              height: 180,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.add_a_photo,
                size: 40,
              ),
            )
          : Container(
              width: 180,
              height: 180,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: FileImage(
                    File(path!),
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
    );
  }
}
