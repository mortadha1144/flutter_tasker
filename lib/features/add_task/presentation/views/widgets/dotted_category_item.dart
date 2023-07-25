import 'package:flutter/material.dart';

class DottedCategoryItem extends StatelessWidget {
  const DottedCategoryItem({
    super.key, required this.title, required this.color,
  });
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 18,
          width: 18,
          margin: const EdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: color,
              width: 2,
            ),
          ),
        ),
         Text(
          title,
          style: TextStyle(color: color),
        )
      ],
    );
  }
}