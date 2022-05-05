import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/variables/style.dart';
import '../../../../common/widgets/image/random_circle_image.dart';

class CustomProfileTopCard extends StatelessWidget {
  const CustomProfileTopCard({
    Key? key,
  }) : super(key: key);

  //TODO Apiden gelen verilere göre model Oluşturulacak
  final name = "Volkan Ket";
  final birthDate = "15 Nisan 2002";
  final country = "Bursa";
  final bio = "Mobil Uygulama Geliştirici ";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Get.theme.primaryColor),
        Container(
          padding: EdgeInsets.all(Utils.normalPadding),
          width: Get.size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(flex: 4, child: RandomCircleImage(height: Get.size.width)),
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 4, child: FittedBox(child: Text(name, style: AppTextStyle.profilPageAboutTextStyle))),
                    const Spacer(flex: 1),
                    Expanded(flex: 4, child: Text(birthDate, style: AppTextStyle.profilPageDateTimeTextStyle)),
                    Expanded(flex: 2, child: Text(country, style: AppTextStyle.profilPageCountryTextStyle)),
                    const Spacer(flex: 4),
                    Expanded(
                        flex: 4,
                        child: FittedBox(fit: BoxFit.scaleDown, child: Text(bio, style: AppTextStyle.profilePageBioTextStyle))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
