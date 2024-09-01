import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/my_card_and_income_section.dart';

class DashboardWebLayout extends StatelessWidget {
  const DashboardWebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: AllExpensesAndQuickInvoiceSection(),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: MyCardAndIncomeSection(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
