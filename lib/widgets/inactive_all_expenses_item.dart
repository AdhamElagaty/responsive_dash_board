import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            icon: allExpensesItemModel.icon,
            iconColor: const Color(0xff4EB7F2),
            backgroundColor: const Color(0xffFAFAFA),
            arrowColor: const Color(0xff064061),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyle.styleSemiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyle.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.price,
            style: AppStyle.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
