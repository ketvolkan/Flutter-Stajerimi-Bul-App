import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/constants/app_constants.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../../../../core/variables/icons.dart';
import 'cv_base_card.dart';

class CvLanguageCard extends StatelessWidget {
  const CvLanguageCard({Key? key}) : super(key: key);

  //TODO Apiden gelen verilere göre model Oluşturulacak
  @override
  Widget build(BuildContext context) {
    return CvBaseCard(
      title: AppConstants.languageCvCardTitle.tr,
      child: Padding(
        padding: EdgeInsets.all(Utils.normalPadding),
        child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const ListTile(title: Text("Fransızca"), trailing: Text("Orta"));
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: Utils.extraLowPadding);
            },
            itemCount: 3),
      ),
      icon: AppIcons.languageCvCardIcon,
    );
  }
}
