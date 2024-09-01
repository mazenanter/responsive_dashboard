import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      leading: SvgPicture.asset(drawerItemModel.image),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleBold16(context),
      ),
      leading: SvgPicture.asset(drawerItemModel.image),
      trailing: Container(
        width: 3.27,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
