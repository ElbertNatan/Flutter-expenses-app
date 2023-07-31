import 'dart:math';

import 'package:flutter/material.dart';
import 'package:futter_expenses_app/models/Expense.dart';
import 'package:futter_expenses_app/widgets/expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registereExpenses = [
    Expense(
        title: 'Flutter Courses',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 14.99,
        date: DateTime.now(),
        category: Category.leisure)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Chart"),
          Expanded(child: ExpensesList(expenses: _registereExpenses))
        ],
      ),
    );
  }
}
