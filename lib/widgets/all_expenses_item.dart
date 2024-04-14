import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/active_all_expenses_item.dart';
import 'package:responsive_dash_board/widgets/inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isActive,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild:
          ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel),
      secondChild:
          InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 250),
    );
  }
}
