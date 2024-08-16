import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item_list_view.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
            image: Assets.imagesFrame2,
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemListView(),
        ],
      ),
    );
  }
}
