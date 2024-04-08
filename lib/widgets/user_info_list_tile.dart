import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.avatarImage,
    required this.name,
    required this.email,
  });

  final String avatarImage;
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(avatarImage),
        title: Text(
          name,
          style: AppStyle.styleSemiBold16,
        ),
        subtitle: Text(
          email,
          style: AppStyle.styleRegular12,
        ),
      ),
    );
  }
}
