import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/constants/app_constants.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../../../../core/variables/icons.dart';
import '../../../../../common/widgets/custom_text.dart';
import 'cv_base_card.dart';

class CvAboutCard extends StatelessWidget {
  const CvAboutCard({Key? key}) : super(key: key);

  //TODO Apiden gelen verilere göre model Oluşturulacak
  @override
  Widget build(BuildContext context) {
    return CvBaseCard(
      title: AppConstants.aboutCvCardTitle.tr,
      child: Padding(
        padding: EdgeInsets.all(Utils.normalPadding),
        child: CustomText(
            "20 Yaşındayım cart curt şunlarla bunlarla ilgileniyorum girişkenim kendi çapımda hedeflerim var bla bla bla iyi bir insanım insan ilişkilerim iyi"),
      ),
      icon: AppIcons.aboutCvCardIcon,
    );
  }
}
