import 'package:flutter/material.dart';

import 'dotted_category_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const categories = [
      {
        'color': Colors.green,
        'title': 'Learning',
      },
      {
        'color': Colors.blue,
        'title': 'Working',
      },
      {
        'color': Colors.amber,
        'title': 'General',
      },
    ];
    return Row(
      children: [
        ...List.generate(
          categories.length,
          (index) => DottedCategoryItem(
            title: categories[index]['title'] as String,
            color: categories[index]['color'] as Color,
          ),
        ),
      ],
    );
  }
}
