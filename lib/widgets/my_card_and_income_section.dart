import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_transction_history_section.dart';

class MyCardAndIncomeSection extends StatelessWidget {
  const MyCardAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        SliverToBoxAdapter(
          child: MyCardsAndTransctionHistorySection(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverFillRemaining(
          child: IncomeSection(),
        )
      ],
    );
  }
}
