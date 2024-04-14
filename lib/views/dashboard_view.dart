import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayout(
        mobileLayoput: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
