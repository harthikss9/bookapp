// widgets/book_image.dart
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  final String imageUrl;

  const BookImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl, // Use the asset path here
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error); // Display an error icon if the image fails to load
      },
    );
  }
}
