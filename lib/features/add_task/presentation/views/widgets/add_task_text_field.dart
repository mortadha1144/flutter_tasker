import 'package:flutter/material.dart';

class AddTaskTextField extends StatelessWidget {
  const AddTaskTextField({
    super.key,
    this.height = 44,
    required this.text,
  });

  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: text,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 18, vertical: 11)),
      ),
    );
  }
}
