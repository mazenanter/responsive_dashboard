import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transction_model.dart';
import 'package:responsive_dashboard/widgets/transction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});
  static const List<TransctionModel> items = [
    TransctionModel(
      titel: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    TransctionModel(
      titel: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithdrawal: false,
    ),
    TransctionModel(
      titel: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((toElement) => TransctionItem(transctionModel: toElement))
          .toList(),
    );
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) =>
          TransctionItem(transctionModel: items[index]),
    );
  }
}
