import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/models/employee_models/employee_model.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/icons.dart';
import '../../../../../core/variables/style.dart';
import '../../../common/widgets/appBar/custom_app_bar.dart';
import '../../../common/widgets/body/custom_body.dart';
import '../../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../../common/widgets/buttons/custom_icon_button.dart';
import '../../../common/widgets/buttons/custom_toggle_button.dart';
import '../../../common/widgets/cards/basic_card.dart';
import '../../../common/widgets/custom_indicator.dart';
import '../../../common/widgets/custom_text.dart';
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
        child: Column(
          children: [
            Obx(() => controller.isLoading ? const CustomIndicator() : const SizedBox()),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Utils.highPadding),
                child: Obx(
                  () {
                    if ((controller.employeeList.isEmpty || controller.employeeList is! List<EmployeeModel>) &&
                        controller.state != SearchManagementState.Busy) {
                      return Center(child: CustomText("No Record"));
                    }
                    return ListView.separated(
                      itemBuilder: (context, index) {
                        EmployeeModel employeeModel = controller.employeeList[index];
                        return BasicCard(
                          title: "${employeeModel.firstName} ${employeeModel.lastName}",
                          subtitle: employeeModel.adress,
                          description: employeeModel.aboutMe,
                          profileImage: const RandomCircleImage(),
                          goToCardDescription: true,
                          onTap: () => controller.basicCardOnTap(employeeModel),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(height: Utils.normalPadding),
                      itemCount: controller.employeeList.length,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: _buildNavigationBar,
    );
  }

  CustomAppBar get _buildAppBar => CustomAppBar(
        title: AutoSizeText(
          AppConstants.searchAppBar.tr,
          maxFontSize: 35,
          minFontSize: 25,
          style: AppTextStyle.appBarTextStyle,
        ),
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
