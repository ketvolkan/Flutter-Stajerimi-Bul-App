import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/utils.dart';
import '../../../common/widgets/appBar/custom_app_bar.dart';
import '../../../common/widgets/body/custom_body.dart';
import '../../../common/widgets/bottomNavigationBar/custom_botton_navigation_bar.dart';
import '../../../common/widgets/fabButton/custom_floating_action_button.dart';
import '../../../common/widgets/scaffold/custom_scaffold.dart';
import '../setting_management/menu_buttons/menu_enum.dart';
import 'widgets/custom_profile_top_card.dart';
import 'widgets/cv_about_card.dart';
import 'widgets/cv_job_experience.dart';
import 'widgets/cv_language_card.dart';
import 'widgets/cv_school_card.dart';

class ProfileManagementView extends GetView<ProfileManagementView> {
  const ProfileManagementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar,
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.size.height * 2.2,
          child: Column(
            children: [
              const Expanded(flex: 1, child: CustomProfileTopCard()),
              Expanded(
                flex: 12,
                child: CustomBody(
                  child: Padding(
                    padding: EdgeInsets.all(Utils.highPadding),
                    child: Column(
                      children: [
                        SizedBox(height: Utils.normalPadding),
                        const CvAboutCard(),
                        SizedBox(height: Utils.normalPadding),
                        const CvSchoolCard(),
                        SizedBox(height: Utils.normalPadding),
                        const CvJobExperienceCard(),
                        SizedBox(height: Utils.normalPadding),
                        const CvLanguageCard(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildNavigationBar,
      floatingActionButton: const CustomFloatingActionButton(),
    );
  }

  CustomAppBar get _buildAppBar => CustomAppBar(
        title: const Text(AppConstants.profileAppBar),
        showLeadingBackIcon: false,
        onLeadingPressed: () {},
        actions: const [],
      );

  CustomNavigationBar get _buildNavigationBar => CustomNavigationBar(currentIndex: BottomNavbars.Profile.index);
}
