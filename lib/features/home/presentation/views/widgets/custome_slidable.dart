import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CustomSlidable extends StatelessWidget {
  const CustomSlidable(
      {super.key, required this.child, required this.onDismissed, this.onPressed});
  final Widget child;
  final VoidCallback onDismissed;
  final void Function(BuildContext)? onPressed;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: key,
      endActionPane: ActionPane(
        extentRatio: 0.3,
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: onDismissed),
        children: [
          SlidableAction(
            onPressed: onPressed,
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12)),
          ),
        ],
      ),
      child: child,
    );
  }
}
