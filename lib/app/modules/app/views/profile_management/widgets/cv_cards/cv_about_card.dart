import 'package:flutter/material.dart';
import 'package:stajyerimibul/core/constants/app_constants.dart';
import 'package:stajyerimibul/core/utils/utils.dart';
import 'package:stajyerimibul/core/variables/icons.dart';

import 'cv_base_card.dart';

class CvAboutCard extends StatelessWidget {
  const CvAboutCard({Key? key}) : super(key: key);

  //TODO Apiden gelen verilere göre model Oluşturulacak
  @override
  Widget build(BuildContext context) {
    return CvBaseCard(
      title: AppConstants.aboutCvCardTitle,
      child: Padding(
        padding: EdgeInsets.all(Utils.normalPadding),
        child: const Text(
            "20 Yaşındayım cart curt şunlarla bunlarla ilgileniyorum girişkenim kendi çapımda hedeflerim var bla bla bla iyi bir insanım insan ilişkilerim iyi"),
      ),
      icon: AppIcons.aboutCvCardIcon,
    );
  }
}
