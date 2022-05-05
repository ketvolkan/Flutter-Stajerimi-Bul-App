import 'package:flutter/material.dart';

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
    return CustomBody(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Utils.highPadding) + EdgeInsets.only(top: Utils.highPadding),
        child: ListView(
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
