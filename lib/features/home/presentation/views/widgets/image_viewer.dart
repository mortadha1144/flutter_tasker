import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer(
      {super.key, required this.imageUrl, required this.onPressed});

  final String imageUrl;
  final VoidCallback onPressed;

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
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Image.network(
              'http://5.189.132.217$imageUrl',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            right: -2,
            top: -2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8)),
              child: IconButton(
                  onPressed: onPressed,
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 32,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}