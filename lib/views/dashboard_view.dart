import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_web_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        webLayout: (context) => const DashboardWebLayout(),
      ),
    );
  }
}
