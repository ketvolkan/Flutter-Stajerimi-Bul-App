import 'package:flutter/material.dart';
import 'package:stajyerimibul/core/utils/utils.dart';

import '../../../../../../core/constants/app_constants.dart';
import '../../../../../../core/variables/icons.dart';
import 'cv_base_card.dart';

class CvSchoolCard extends StatelessWidget {
  const CvSchoolCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CvBaseCard(
      title: AppConstants.schoolCvCardTitle,
      child: Column(
        children: [
          SizedBox(height: Utils.normalPadding),
          ListTile(
            title: const Text("Aydın Adnan Menderes Üniversitesi"),
            subtitle: const Text("Bilgisayar Programcılığı"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("2020"),
                Text("2022"),
              ],
            ),
          ),
          SizedBox(height: Utils.normalPadding),
          ListTile(
            title: const Text("Aydın Adnan Menderes Üniversitesi"),
            subtitle: const Text("Bilgisayar Programcılığı"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("2020"),
                Text("2022"),
              ],
            ),
          ),
          SizedBox(height: Utils.normalPadding),
          ListTile(
            title: const Text("Aydın Adnan Menderes Üniversitesi"),
            subtitle: const Text("Bilgisayar Programcılığı"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("2020"),
                Text("2022"),
              ],
            ),
          ),
          SizedBox(height: Utils.normalPadding),
          ListTile(
            title: const Text("Aydın Adnan Menderes Üniversitesi"),
            subtitle: const Text("Bilgisayar Programcılığı"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("2020"),
                Text("2022"),
              ],
            ),
          ),
        ],
      ),
      icon: AppIcons.schoolCvCardIcon,
    );
  }
}
