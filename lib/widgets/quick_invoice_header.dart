import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Quick Invoice",
          style: AppStyle.styleSemiBold20,
        ),
        FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: const Color(0xffFAFAFA),
          elevation: 0,
          hoverElevation: 1,
          hoverColor: const Color(0xffFAFAFA),
          focusColor: const Color(0xffFAFAFA),
          splashColor: const Color(0xffFAFAFA),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
