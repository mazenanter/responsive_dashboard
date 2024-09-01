import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  AllExpensesItemListView({super.key});
  List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(
      image: Assets.imagesMoneys,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesCardReceive,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                itemIndex = 0;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: widget.items[0],
              isSelected: itemIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                itemIndex = 1;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: widget.items[1],
              isSelected: itemIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                itemIndex = 2;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: widget.items[2],
              isSelected: itemIndex == 2,
            ),
          ),
        ),
      ],
    );
  }
}
