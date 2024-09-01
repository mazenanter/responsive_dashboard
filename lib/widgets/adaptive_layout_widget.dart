import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.webLayout});
  final WidgetBuilder mobileLayout, tabletLayout, webLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          return tabletLayout(context);
        } else {
          return webLayout(context);
        }
      },
    );
  }
}
