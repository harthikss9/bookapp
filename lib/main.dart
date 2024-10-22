// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/book_bloc.dart';
import 'screens/home_page.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => BookBloc()..add(LoadBooks()),
      child: const MyApp(), // Make sure this is 'const' if MyApp supports it
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Added 'const' to the constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

