import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/constants/app_constants.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../../../../core/variables/icons.dart';
import '../../../employee_profile_management/widgets/cv_cards/custom_job_school_list_tile.dart';
import 'cv_base_card.dart';

class CvSchoolCard extends StatelessWidget {
  const CvSchoolCard({Key? key}) : super(key: key);

  //TODO Apiden gelen verilere göre model Oluşturulacak
  @override
  Widget build(BuildContext context) {
    return CvBaseCard(
      title: AppConstants.schoolCvCardTitle.tr,
      child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const CustomJobSchoolListTile(
              title: "Aydın Adnan Menderes Üniversitesi",
              subtitle: "Bilgisayar Programcılığı",
              start: "2017",
              end: "2018",
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: Utils.normalPadding);
          },
          itemCount: 3),
      icon: AppIcons.schoolCvCardIcon,
    );
  }
}
