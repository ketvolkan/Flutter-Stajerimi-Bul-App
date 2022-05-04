import 'package:flutter/material.dart';
import 'package:stajyerimibul/core/utils/utils.dart';

import '../../../../../../core/constants/app_constants.dart';
import '../../../../../../core/variables/icons.dart';
import 'cv_base_card.dart';

class CvLanguageCard extends StatelessWidget {
  const CvLanguageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CvBaseCard(
      title: AppConstants.languageCvCardTitle,
      child: Padding(
        padding: EdgeInsets.all(Utils.normalPadding),
        child: Column(
          children: const [
            ListTile(
              title: Text("Fransızca"),
              trailing: Text("Orta"),
            ),
            ListTile(
              title: Text("Türkçe"),
              trailing: Text("Anadil"),
            ),
            ListTile(
              title: Text("Almaca"),
              trailing: Text("İyi"),
            ),
            ListTile(
              title: Text("İngilizce"),
              trailing: Text("İyi"),
            ),
          ],
        ),
      ),
      icon: AppIcons.languageCvCardIcon,
    );
  }
}
