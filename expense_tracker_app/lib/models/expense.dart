import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {
  food,
  travel,
  leisure,
  work,
  others,
}

const categoryIcons = {
  Category.food: Icons.lunch_dining_sharp,
  Category.travel: Icons.flight_takeoff_sharp,
  Category.leisure: Icons.coffee_sharp,
  Category.work: Icons.work,
  Category.others: Icons.more_horiz_sharp,
};

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

  String get formattedDate {
    return formatter.format(date);
  }
}
