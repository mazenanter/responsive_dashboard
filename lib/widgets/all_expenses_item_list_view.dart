import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});
  static List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      image: Assets.imagesMoneys,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesCardReceive,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesCardSend,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int itemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: AllExpensesItemListView.items.asMap().entries.map(
      (e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    itemIndex = index;
                  });
                },
                child: AllExpensesItem(
                  allExpensesItemModel: item,
                  isSelected: itemIndex == index,
                ),
              ),
            ),
          );
        }
        return Expanded(
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    itemIndex = index;
                  });
                },
                child: AllExpensesItem(
                  allExpensesItemModel: item,
                  isSelected: itemIndex == index,
                )));
      },
    ).toList());
  }
}
