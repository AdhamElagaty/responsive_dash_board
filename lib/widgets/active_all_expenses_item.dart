import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
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
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            icon: allExpensesItemModel.icon,
            iconColor: Colors.white,
            backgroundColor: Colors.white.withOpacity(0.10),
            arrowColor: Colors.white,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyle.styleSemiBold16.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyle.styleRegular14.copyWith(
              color: const Color(0xffFAFAFA),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.price,
            style: AppStyle.styleSemiBold24.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
