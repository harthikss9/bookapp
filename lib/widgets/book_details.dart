// TODO Implement this library.
// widgets/book_details.dart
import 'package:flutter/material.dart';
import '../models/book.dart';
import 'book_image.dart';

class BookDetails extends StatelessWidget {
  final Book book;

  const BookDetails({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BookImage(imageUrl: book.imageUrl),
        const SizedBox(height: 10),
        Text(book.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text(book.author, style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
        const SizedBox(height: 10),
        Text(book.description),
      ],
    );
  }
}
