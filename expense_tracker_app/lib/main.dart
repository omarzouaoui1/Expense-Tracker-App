import 'package:expense_tracker_app/widgets/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    // theme: ThemeData(useMaterial3: false),
    home: Expenses(),
  ));
}
