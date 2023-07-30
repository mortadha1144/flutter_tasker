import 'dart:io';

import 'package:flutter/material.dart';

class AddImageButton extends StatelessWidget {
  const AddImageButton({
    super.key, this.path,
  });

  

 final String? path;

  @override
  Widget build(BuildContext context) {
    return path == null
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
          );
  }
}
