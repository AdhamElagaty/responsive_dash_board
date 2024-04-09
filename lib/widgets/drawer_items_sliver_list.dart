import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_item.dart';

class DrawerItemsSliverList extends StatefulWidget {
  const DrawerItemsSliverList({
    super.key,
  });

  @override
  State<DrawerItemsSliverList> createState() => _DrawerItemsSliverListState();
}

class _DrawerItemsSliverListState extends State<DrawerItemsSliverList> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItemModels = const [
    DrawerItemModel(
      icon: Assets.imagesDashboard,
      itemName: "Dashboard",
    ),
    DrawerItemModel(
      icon: Assets.imagesMyTransctions,
      itemName: "My Transctions",
    ),
    DrawerItemModel(
      icon: Assets.imagesStatistics,
      itemName: "Statistics",
    ),
    DrawerItemModel(
      icon: Assets.imagesWalletAccount,
      itemName: "Wallet Account",
    ),
    DrawerItemModel(
      icon: Assets.imagesMyInvestments,
      itemName: "My Investments",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItemModels.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: CustomDrawerItem(
            drawerItemModel: drawerItemModels[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
