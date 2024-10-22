// widgets/sort_buttons.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/book_bloc.dart';

class SortButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            // Dispatch SortBooksByAuthor event
            context.read<BookBloc>().add(SortBooksByAuthor());
          },
          child: Text('Author'),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Dispatch SortBooksByTitle event
            context.read<BookBloc>().add(SortBooksByTitle());
          },
          child: Text('Title'),
        ),
      ],
    );
  }
}
