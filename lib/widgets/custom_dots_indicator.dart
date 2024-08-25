import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot_indicator.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(
            isActive: currentPage == index,
          ),
        ),
      ),
    );
  }
}
