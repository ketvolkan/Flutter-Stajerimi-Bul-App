import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/widgets/buttons/custom_toggle_button.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/icons.dart';
import '../../../common/widgets/appBar/custom_app_bar.dart';
import '../../../common/widgets/body/custom_body.dart';
import '../../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../../common/widgets/buttons/custom_icon_button.dart';
import '../../../common/widgets/cards/basic_card.dart';
import '../../../common/widgets/fabButton/custom_floating_action_button.dart';
import '../../../common/widgets/image/random_circle_image.dart';
import '../../../common/widgets/scaffold/custom_scaffold.dart';
import '../setting_management/menu_buttons/menu_enum.dart';
import 'search_management_controller.dart';

class SearchManagementView extends GetView<SearchManagementController> {
  const SearchManagementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar,
      body: CustomBody(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Utils.highPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: Utils.lowPadding),
                BasicCard(
                  title: "Volkan Ket",
                  subtitle: "Flutter Developer",
                  description: "Flutter ile ilgili staj " * 5,
                  profileImage: const RandomCircleImage(),
                  goToCardDescription: true,
                  onTap: () {},
                ),
                SizedBox(height: Utils.lowPadding),
                BasicCard(
                  title: "Merve Demirtaş",
                  subtitle: "Tasarımcı",
                  description: "Figma ile harika tasarımlar yapabiliyorum " * 3,
                  profileImage: const RandomCircleImage(),
                  goToCardDescription: true,
                  onTap: () {},
                ),
                SizedBox(height: Utils.lowPadding),
                BasicCard(
                  title: "Baki Baran Özel",
                  subtitle: "Frontend Developer",
                  description: "Frontendim çok iyi " * 5,
                  profileImage: const RandomCircleImage(),
                  goToCardDescription: true,
                  onTap: () {},
                ),
                SizedBox(height: Utils.lowPadding),
                BasicCard(
                  title: "Hanifi Can Seven",
                  subtitle: "Backend Developer",
                  description: "Php ile Mükkemmel Siteler Yapabilirim" * 7,
                  profileImage: const RandomCircleImage(),
                  goToCardDescription: true,
                  onTap: () {},
                ),
                SizedBox(height: Utils.lowPadding),
                BasicCard(
                  title: "Utku Göneş",
                  subtitle: "Tercuman",
                  profileImage: const RandomCircleImage(),
                  goToCardDescription: true,
                  onTap: () {},
                ),
                SizedBox(height: Utils.lowPadding),
                BasicCard(
                  title: "Sude Taşoyan",
                  subtitle: "Gazeteci",
                  profileImage: const RandomCircleImage(),
                  goToCardDescription: true,
                  onTap: () {},
                ),
                SizedBox(height: Utils.veryVeryHighPadding),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildNavigationBar,
      floatingActionButton: const CustomFloatingActionButton(),
    );
  }

  CustomAppBar get _buildAppBar => CustomAppBar(
        title: Text(AppConstants.searchAppBar.tr),
        showLeadingBackIcon: false,
        onLeadingPressed: () {},
        actions: [toggleButton, filterButton],
      );

  CustomIconButton get filterButton => CustomIconButton(icon: AppIcons.appBarFilterIcon, onTap: controller.filterButtonTap);
  Obx get toggleButton => Obx(() => CustomToggleButton(
      firstText: AppConstants.employeeFind.tr,
      secondText: AppConstants.employerFind.tr,
      firstIcon: AppIcons.employeeIcon,
      secondIcon: AppIcons.employerIcon,
      current: controller.selectedCategory,
      onChanged: (val) {
        controller.selectedCategory = val;
      }));
  CustomNavigationBar get _buildNavigationBar => CustomNavigationBar(currentIndex: BottomNavbars.Search.index);
}
