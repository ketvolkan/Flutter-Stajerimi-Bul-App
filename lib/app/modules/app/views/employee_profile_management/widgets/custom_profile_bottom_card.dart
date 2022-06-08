import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/utils.dart';
import '../../../../common/widgets/body/custom_body.dart';
import '../../employee_profile_management/widgets/cv_cards/cv_about_card.dart';
import '../../employee_profile_management/widgets/cv_cards/cv_job_experience.dart';
import '../../employee_profile_management/widgets/cv_cards/cv_language_card.dart';
import '../../employee_profile_management/widgets/cv_cards/cv_school_card.dart';

class CustomProfileBottomCard extends StatelessWidget {
  const CustomProfileBottomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Todo height gelen veriler kadar uzun olacak
    return CustomBody(
      height: Get.height * 1.5,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Utils.highPadding) + EdgeInsets.only(top: Utils.highPadding),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(height: Utils.normalPadding),
            const CvAboutCard(),
            SizedBox(height: Utils.normalPadding),
            const CvSchoolCard(),
            SizedBox(height: Utils.normalPadding),
            const CvJobExperienceCard(),
            SizedBox(height: Utils.normalPadding),
            const CvLanguageCard(),
            SizedBox(height: Utils.normalPadding * 30),
          ],
        ),
      ),
    );
  }
}
