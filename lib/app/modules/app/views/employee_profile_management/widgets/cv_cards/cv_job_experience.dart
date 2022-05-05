import 'package:flutter/material.dart';

import '../../../../../../../core/constants/app_constants.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../../../../core/variables/icons.dart';
import '../../../employee_profile_management/widgets/cv_cards/custom_job_school_list_tile.dart';
import 'cv_base_card.dart';

class CvJobExperienceCard extends StatelessWidget {
  const CvJobExperienceCard({Key? key}) : super(key: key);

  //TODO Apiden gelen verilere göre model Oluşturulacak
  @override
  Widget build(BuildContext context) {
    return CvBaseCard(
      title: AppConstants.jobExperienceCvCardTitle,
      child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const CustomJobSchoolListTile(
              title: "İstanbul Büyükşehir Belediyesi",
              subtitle: "Emlak İstimlak",
              start: "2017",
              end: "2018",
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: Utils.normalPadding);
          },
          itemCount: 3),
      icon: AppIcons.jobExperienceCvCardIcon,
    );
  }
}
