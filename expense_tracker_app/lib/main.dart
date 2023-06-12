import 'package:expense_tracker_app/widgets/expenses.dart';
import 'package:flutter/material.dart';

var colorShceme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 94, 136, 184),
);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: colorShceme,
      appBarTheme: AppBarTheme().copyWith(
        backgroundColor: colorShceme.onPrimaryContainer,
        foregroundColor: colorShceme.primaryContainer,
        centerTitle: true,
      ),
    ),
    home: const Expenses(),
  ));
}
