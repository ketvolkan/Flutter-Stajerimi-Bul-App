import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/custom_text.dart';

import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/variables/style.dart';
import '../../../../common/widgets/image/random_circle_image.dart';

class CustomProfileTopCard extends StatelessWidget {
  const CustomProfileTopCard({
    Key? key,
  }) : super(key: key);

  //TODO Apiden gelen verilere göre model Oluşturulacak

  final birthDate = "15 Nisan 2002";
  final country = "Bursa";
  final bio = "Mobil Uygulama Geliştirici";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.size.height / 4,
      child: Stack(
        children: [
          Container(color: Get.theme.primaryColor),
          Column(
            children: [
              RandomCircleImage(height: Get.size.width / 3.5),
              SizedBox(height: Utils.normalPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: Utils.normalPadding),
                  CustomText(birthDate, style: AppTextStyle.profilPageDateTimeTextStyle),
                  SizedBox(width: Utils.normalPadding),
                  CustomText(country, style: AppTextStyle.profilPageCountryTextStyle),
                ],
              ),
              SizedBox(height: Utils.normalPadding),
              FittedBox(
                child: CustomText(
                  bio,
                  style: AppTextStyle.profilePageBioTextStyle,
                  padding: EdgeInsets.symmetric(horizontal: Utils.highPadding),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
