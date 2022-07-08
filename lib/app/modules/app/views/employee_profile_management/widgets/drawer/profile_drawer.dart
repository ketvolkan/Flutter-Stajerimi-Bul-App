import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'drawer_menu_buttons/drawer_menu_items.dart';
import '../../../../../common/widgets/custom_text.dart';

import '../../../../../../../core/constants/app_constants.dart';

import '../../../../../../../core/utils/utils.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(Utils.extraHighRadius)),
      child: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: Get.size.height * 0.13,
              child: DrawerHeader(
                child: SizedBox(
                  width: Get.size.width,
                  child: CustomText.extraHigh(AppConstants.updateProfileDrawer.tr, textColor: Colors.white),
                ),
                decoration: BoxDecoration(color: Get.theme.primaryColor),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => drawerMenuItems[index],
                  separatorBuilder: (context, index) => SizedBox(height: Utils.normalPadding),
                  itemCount: drawerMenuItems.length),
            )
          ],
        ),
      ),
    );
  }
}
