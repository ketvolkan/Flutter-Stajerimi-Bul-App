import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/variables/style.dart';
import '../../../../common/widgets/image/random_circle_image.dart';

class CustomProfileTopCard extends StatelessWidget {
  const CustomProfileTopCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Get.theme.primaryColor),
        Padding(
          padding: EdgeInsets.all(Utils.normalPadding),
          child: SizedBox(
            width: Get.size.width,
            child: Row(
              children: [
                RandomCircleImage(height: Get.size.width),
                SizedBox(width: Utils.highPadding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 2, child: Text("Volkan Ket", style: AppTextStyle.profilPageAboutTextStyle)),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "15 Nisan 2002",
                        style: AppTextStyle.profilPageAboutTextStyle.copyWith(
                          fontSize: Utils.textSizeSubtitle,
                          color: Get.theme.appBarTheme.titleTextStyle!.color!.withOpacity(0.75),
                        ),
                      ),
                    ),
                    const Spacer(flex: 1),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Text(
                            "Mobil Uygulama Geliştirici",
                            style: AppTextStyle.profilPageAboutTextStyle.copyWith(
                              fontSize: Utils.textSizeTitle,
                              color: Get.theme.appBarTheme.titleTextStyle!.color!.withOpacity(0.75),
                            ),
                          ),
                          SizedBox(width: Utils.highPadding),
                          Text(
                            "Bursa",
                            style: AppTextStyle.profilPageAboutTextStyle.copyWith(
                              fontSize: Utils.textSizeTitle,
                              color: Get.theme.appBarTheme.titleTextStyle!.color!.withOpacity(0.75),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
