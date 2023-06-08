import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id; //id
  final String title; //the name or title of the expense
  final double amount; //the amount of money payed on that expense
  final DateTime date; //the day of the expense
  final Category category; //the category of that expense
}
