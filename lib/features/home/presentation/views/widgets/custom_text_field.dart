import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.height = 44,
    required this.text,
    this.icon,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.controller,
    this.autofocus = false,
    this.focusNode, this.initialValue,
  });

  final double height;
  final String text;
  final IconData? icon;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final bool autofocus;
  final FocusNode? focusNode;
 final String? initialValue;
  @override
  Widget build(BuildContext context) {
    return
        Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        initialValue: initialValue,
        focusNode: focusNode,
        autofocus: autofocus,
        controller: controller,
        onChanged: onChanged,
        onSaved: onSaved,
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
