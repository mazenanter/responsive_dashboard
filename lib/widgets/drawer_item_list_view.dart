import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> drawerItemList = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesCategory2),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesConvertCard),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesGraph),
    const DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet2),
    const DrawerItemModel(title: 'My Investments', image: Assets.imagesChart2),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(
            drawerItemModel: drawerItemList[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
      itemCount: drawerItemList.length,
    );
  }
}
