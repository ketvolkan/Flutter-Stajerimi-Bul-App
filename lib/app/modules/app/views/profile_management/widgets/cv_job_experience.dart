import 'package:flutter/material.dart';
import 'package:stajyerimibul/core/utils/utils.dart';

import '../../../../../../core/constants/app_constants.dart';
import '../../../../../../core/variables/icons.dart';
import 'cv_base_card.dart';

class CvJobExperienceCard extends StatelessWidget {
  const CvJobExperienceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CvBaseCard(
      title: AppConstants.jobExperienceCvCardTitle,
      child: Column(
        children: [
          SizedBox(height: Utils.normalPadding),
          ListTile(
            title: const Text("İstanbul Büyükşehir Belediyesi"),
            subtitle: const Text("Emlak İstimlak"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("2017"),
                Text("2018"),
              ],
            ),
          ),
          SizedBox(height: Utils.normalPadding),
          ListTile(
            title: const Text("İstanbul Büyükşehir Belediyesi"),
            subtitle: const Text("Emlak İstimlak"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("2017"),
                Text("2018"),
              ],
            ),
          ),
          SizedBox(height: Utils.normalPadding),
          ListTile(
            title: const Text("İstanbul Büyükşehir Belediyesi"),
            subtitle: const Text("Emlak İstimlak"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("2017"),
                Text("2018"),
              ],
            ),
          ),
          SizedBox(height: Utils.normalPadding),
          ListTile(
            title: const Text("İstanbul Büyükşehir Belediyesi"),
            subtitle: const Text("Emlak İstimlak"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("2017"),
                Text("2018"),
              ],
            ),
          ),
        ],
      ),
      icon: AppIcons.jobExperienceCvCardIcon,
    );
  }
}
