import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionItemList extends StatelessWidget {
  const LatestTransactionItemList({super.key});

  static const List<UserModel> userModels = [
    UserModel(
      avatarImage: Assets.imagesAvatar1,
      name: "Madrani Andi",
      email: "Madraniadi20@gmail",
    ),
    UserModel(
      avatarImage: Assets.imagesAvatar2,
      name: "Josua Nunito",
      email: "JoshNunito@gmail.com",
    ),
    UserModel(
      avatarImage: Assets.imagesAvatar1,
      name: "Madrani Andi",
      email: "Madraniadi20@gmail",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userModels
            .map((e) => IntrinsicWidth(
                  child: UserInfoListTile(userModel: e),
                ))
            .toList(),
      ),
    );
  }
}
