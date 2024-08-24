import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: Assets.imagesFrame,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesFrame2,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesFrame,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((toElement) => IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: toElement)))
            .toList(),
      ),
    );
  }
}
