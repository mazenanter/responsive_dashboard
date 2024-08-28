import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.transctionModel});
  final TransctionModel transctionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transctionModel.titel,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transctionModel.date,
          style:
              AppStyles.styleRegular16.copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transctionModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transctionModel.isWithdrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
