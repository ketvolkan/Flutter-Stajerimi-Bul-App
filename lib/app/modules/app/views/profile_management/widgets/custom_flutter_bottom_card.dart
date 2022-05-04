import 'package:flutter/material.dart';

import 'package:stajyerimibul/app/modules/app/views/profile_management/widgets/cv_cards/cv_about_card.dart';
import 'package:stajyerimibul/app/modules/app/views/profile_management/widgets/cv_cards/cv_job_experience.dart';
import 'package:stajyerimibul/app/modules/app/views/profile_management/widgets/cv_cards/cv_language_card.dart';
import 'package:stajyerimibul/app/modules/app/views/profile_management/widgets/cv_cards/cv_school_card.dart';

import 'package:stajyerimibul/app/modules/common/widgets/body/custom_body.dart';
import 'package:stajyerimibul/core/utils/utils.dart';

class CustomProfileBottomCard extends StatelessWidget {
  const CustomProfileBottomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBody(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Utils.highPadding),
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
