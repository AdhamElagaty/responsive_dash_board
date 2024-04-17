import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/user_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userModel,
  });

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userModel.avatarImage),
        title: Text(
          userModel.name,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          userModel.email,
          style: AppStyle.styleRegular12,
        ),
      ),
    );
  }
}
