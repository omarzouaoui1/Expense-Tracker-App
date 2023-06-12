import 'package:expense_tracker_app/widgets/expenses.dart';
import 'package:flutter/material.dart';

var colorShceme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 230, 145, 19),
);

var darkScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 168, 120, 47),
);

void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: darkScheme,
      cardTheme: const CardTheme().copyWith(
        color: darkScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 9,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: darkScheme.primaryContainer,
            foregroundColor: darkScheme.onPrimaryContainer),
      ),
    ),
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
    themeMode: ThemeMode.system,
    home: const Expenses(),
  ));
}
