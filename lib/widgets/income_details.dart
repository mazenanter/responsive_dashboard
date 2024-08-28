import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<ItemModel> items = [
    ItemModel(title: 'Design service', value: '40%', color: Color(0xff208CC8)),
    ItemModel(title: 'Design product', value: '25%', color: Color(0xff4EB7F2)),
    ItemModel(title: 'Product royalti', value: '20%', color: Color(0xff064061)),
    ItemModel(title: 'Other', value: '22%', color: Color(0xffE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => ItemDetails(itemModel: items[index]),
    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        itemModel.value,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
