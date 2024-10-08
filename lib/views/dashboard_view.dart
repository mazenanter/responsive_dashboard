import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_web_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffE5E5E5),
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: const Color(0xfff1f1f1),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        webLayout: (context) => const DashboardWebLayout(),
      ),
    );
  }
}
