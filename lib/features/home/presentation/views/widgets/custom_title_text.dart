import 'package:flutter/material.dart';

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
