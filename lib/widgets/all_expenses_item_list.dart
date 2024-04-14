import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExensesItemList extends StatefulWidget {
  const AllExensesItemList({super.key});

  @override
  State<AllExensesItemList> createState() => _AllExensesItemListState();
}

class _AllExensesItemListState extends State<AllExensesItemList> {
  int currentIndex = 0;
  static const List<AllExpensesItemModel> allExpensesItemModel = [
    AllExpensesItemModel(
      title: "Balance",
      date: "April 2022",
      price: "\$20,129",
      icon: Assets.imagesBalance,
    ),
    AllExpensesItemModel(
      title: "Income",
      date: "April 2022",
      price: "\$20,129",
      icon: Assets.imagesIncome,
    ),
    AllExpensesItemModel(
      title: "Expenses",
      date: "April 2022",
      price: "\$20,129",
      icon: Assets.imagesExpenses,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: allExpensesItemModel.asMap().entries.map((e) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateCurrentIndex(e);
            },
            child: Padding(
              padding: (e.key != 0)
                  ? const EdgeInsets.only(left: 12)
                  : const EdgeInsets.all(0),
              child: AllExpensesItem(
                allExpensesItemModel: e.value,
                isActive: currentIndex == e.key ? true : false,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateCurrentIndex(MapEntry<int, AllExpensesItemModel> e) {
    if (currentIndex != e.key) {
      setState(() {
        currentIndex = e.key;
      });
    }
  }
}
