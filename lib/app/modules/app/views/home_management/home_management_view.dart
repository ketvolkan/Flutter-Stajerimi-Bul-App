import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stajyerimibul/app/modules/app/views/home_management/widgets/active_user_count_card.dart';
import 'package:stajyerimibul/core/utils/utils.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/variables/style.dart';
import '../../../common/widgets/appBar/custom_app_bar.dart';
import '../../../common/widgets/body/custom_body.dart';
import '../../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../../common/widgets/scaffold/custom_scaffold.dart';
import '../setting_management/menu_buttons/menu_enum.dart';
import 'home_management_controller.dart';

class HomeManagementView extends GetView<HomeManagementController> {
  const HomeManagementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar,
      body: CustomBody(
        child: Padding(
          padding: EdgeInsets.all(Utils.normalPadding),
          child: Column(
            children: [
              activeUserRow(),
              SizedBox(height: Utils.normalPadding),
              searchTextField(),
              SizedBox(height: Utils.normalPadding),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildNavigationBar,
    );
  }

  TextFormField searchTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "İş veya İş yeri Arayın",
        hintText: 'Herhangi bir değer giriniz...',
        prefixIcon: Icon(Icons.search),
      ),
    );
  }

  Row activeUserRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ActiveUserCountCard(text: "Aktif İş Veren Sayısı", count: 2133232, backgroundColor: Get.theme.primaryColor),
        ActiveUserCountCard(text: "Aktif İş Arayan Sayısı", count: 23424242, backgroundColor: Get.theme.primaryColor),
      ],
    );
  }

  CustomAppBar get _buildAppBar => CustomAppBar(
        title: AutoSizeText(
          AppConstants.homeAppBar.tr,
          maxFontSize: 35,
          minFontSize: 25,
          style: AppTextStyle.appBarTextStyle,
        ),
        showLeadingBackIcon: false,
        onLeadingPressed: () {},
        actions: const [],
      );

  CustomNavigationBar get _buildNavigationBar => CustomNavigationBar(currentIndex: BottomNavbars.Home.index);
}
