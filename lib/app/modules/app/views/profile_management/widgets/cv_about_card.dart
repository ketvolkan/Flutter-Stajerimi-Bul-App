import 'package:flutter/material.dart';
import 'package:stajyerimibul/core/utils/utils.dart';

import '../../../../../../core/constants/app_constants.dart';
import '../../../../../../core/variables/icons.dart';
import 'cv_base_card.dart';

class CvAboutCard extends StatelessWidget {
  const CvAboutCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CvBaseCard(
      title: AppConstants.aboutCvCardTitle,
      child: Padding(
        padding: EdgeInsets.all(Utils.normalPadding),
        child: Text("blablabla" * 20),
      ),
      icon: AppIcons.aboutCvCardIcon,
    );
  }
}
