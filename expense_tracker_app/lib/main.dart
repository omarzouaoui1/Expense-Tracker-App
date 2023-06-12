import 'package:expense_tracker_app/widgets/expenses.dart';
import 'package:flutter/material.dart';

var colorShceme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 230, 145, 19),
);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: colorShceme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: colorShceme.onPrimaryContainer,
        foregroundColor: colorShceme.primaryContainer,
        // centerTitle: true,
      ),
      cardTheme: const CardTheme().copyWith(
        color: colorShceme.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 9,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorShceme.primaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: colorShceme.onSecondaryContainer,
              fontSize: 15,
            ),
          ),
    ),
    home: const Expenses(),
  ));
}
