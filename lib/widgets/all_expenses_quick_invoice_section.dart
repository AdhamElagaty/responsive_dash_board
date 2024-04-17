import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class AllExpensesQuickInvoiceSection extends StatelessWidget {
  const AllExpensesQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AllExpenses(),
            SizedBox(
              height: 24,
            ),
            QuickInvoice(),
          ],
        ),
      ),
    );
  }
}
