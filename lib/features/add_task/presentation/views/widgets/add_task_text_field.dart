import 'package:flutter/material.dart';

class AddTaskTextField extends StatelessWidget {
  const AddTaskTextField({
    super.key,
    this.height = 44,
    required this.text,
    this.icon,
    this.validator,
  });

  final double height;
  final String text;
  final IconData? icon;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return
        //  Container(
        //   height: height,
        //   margin: const EdgeInsets.symmetric(vertical: 10),
        //   decoration: BoxDecoration(
        //     color: Colors.grey.shade200,
        //     borderRadius: BorderRadius.circular(8),
        //   ),
        //   child:
        Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        validator: validator,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade200,
          prefixIcon: icon != null
              ? Icon(
                  icon,
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),
          hintText: text,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 18, vertical: 11),
        ),
      ),
    );
  }
}
