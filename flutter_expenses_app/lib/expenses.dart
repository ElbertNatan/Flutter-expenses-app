import 'package:flutter/material.dart';
import 'package:futter_expenses_app/Expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registereExpenses = [
    Expense(title: 'Flutter Courses', amount: 19.99, date: DateTime.now(), category: Category.work),
    Expense(title: 'Cinema', amount: 14.99, date: DateTime.now(), category: Category.leisure)
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Chart"),
          Text("List")
        ],
      ),
    );
  }
}
