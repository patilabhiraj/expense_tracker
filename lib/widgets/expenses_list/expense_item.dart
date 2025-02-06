import 'package:flutter/material.dart';

import 'package:expenses_app/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 44),
            Row(
              children: [
                Text(
                  '₹${expense.amount.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 18),
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(CategoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.formatteeDate),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
