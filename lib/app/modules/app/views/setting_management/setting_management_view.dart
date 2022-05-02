import 'package:flutter/material.dart';

import '../../../../../core/utils/utils.dart';
import '../../../common/widgets/body/custom_body.dart';
import '../../../common/widgets/cards/basic_card.dart';

class SettingManagementView extends StatelessWidget {
  const SettingManagementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBody(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Utils.highPadding,
            ),
            BasicCard(
              title: "Ayarlar",
              goToCardDescription: true,
              onTap: () {},
            ),
            SizedBox(
              height: Utils.lowPadding,
            ),
            BasicCard(
              title: "İletişim",
              goToCardDescription: true,
              onTap: () {},
            ),
            SizedBox(
              height: Utils.lowPadding,
            ),
            BasicCard(
              title: "Sistem Logları",
              goToCardDescription: true,
              onTap: () {},
            ),
            SizedBox(
              height: Utils.lowPadding,
            ),
            BasicCard(
              title: "Temalar",
              goToCardDescription: true,
              onTap: () {},
            ),
            SizedBox(
              height: Utils.lowPadding,
            ),
            BasicCard(
              title: "İlanlar",
              goToCardDescription: true,
              onTap: () {},
            ),
            SizedBox(
              height: Utils.lowPadding,
            ),
            BasicCard(
              title: "Sayfa",
              onTap: () {},
            ),
            SizedBox(
              height: Utils.veryVeryHighPadding,
            ),
          ],
        ),
      ),
    );
  }
}
