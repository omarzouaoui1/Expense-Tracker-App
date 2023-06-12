import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widgets/expenses_list.dart/expense_item.dart';
import 'package:expense_tracker_app/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {required this.expenses, required this.onRemoveExpense, super.key});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) {
        return Dismissible(
          background: Container(
            color: Theme.of(context).colorScheme.error.withOpacity(0.70),
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
          ),
          key: ValueKey(
            expenses[index],
          ),
          onDismissed: (direction) {
            onRemoveExpense(expenses[index]);
          },
          child: ExpenseItem(
            expenses[index],
          ),
        );
      },
    );
  }
}
