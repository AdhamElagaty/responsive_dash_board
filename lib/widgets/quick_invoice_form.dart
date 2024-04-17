import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                  title: "Customer name", hintText: "Tybe customer name"),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleTextField(
                  title: "Customer email", hintText: "Tybe customer email"),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                  title: "Item name", hintText: "Tybe item name"),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleTextField(
                  title: "Item amount", hintText: "Tybe item amount"),
            ),
          ],
        ),
      ],
    );
  }
}
