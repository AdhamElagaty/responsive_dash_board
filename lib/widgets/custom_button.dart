import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.backgroundColor,
    this.textColor,
  });

  final String text;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
          padding: const EdgeInsets.all(20),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
        ),
        child: Text(
          text,
          style: AppStyle.styleSemiBold18.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
