import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transction_history_header.dart';
import 'package:responsive_dashboard/widgets/transction_history_list_view.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Divider(
          height: 1,
        ),
        const SizedBox(
          height: 20,
        ),
        const TranscionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransctionHistoryListView(),
      ],
    );
  }
}
