import 'package:expense_tracker_app/widgets/expenses_list.dart/expenses_list.dart';
import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Bangkok Trip",
      amount: 623.8,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: "Food Items",
      amount: 25,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "Coffe with my freinds",
      amount: 10,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: "Laptop",
      amount: 300,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text('Expenses page'),
          Expanded(
            child: ExpensesList(
              expenses: _registeredExpenses,
            ),
          ),
        ],
      ),
    );
  }
}
