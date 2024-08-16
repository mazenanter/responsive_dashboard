import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({
    super.key,
  });

  static const List<DrawerItemModel> drawerItemList = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesCategory2),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesConvertCard),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesGraph),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet2),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesChart2),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: DrawerItem(drawerItemModel: drawerItemList[index]),
      ),
      itemCount: drawerItemList.length,
    );
  }
}
