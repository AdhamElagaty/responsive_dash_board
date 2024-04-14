import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
    required this.arrowColor,
  });

  final Color backgroundColor, iconColor, arrowColor;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          maxRadius: 30,
          backgroundColor: backgroundColor,
          child: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
          ),
        ),
        Transform.rotate(
          angle: -3.1415926536,
          child: Icon(
            Icons.arrow_back_ios,
            color: arrowColor,
          ),
        ),
      ],
    );
  }
}
