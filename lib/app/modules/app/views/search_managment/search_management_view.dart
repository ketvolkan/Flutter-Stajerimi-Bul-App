import 'package:flutter/material.dart';

import '../../../../../core/utils/utils.dart';
import '../../../common/widgets/body/custom_body.dart';
import '../../../common/widgets/cards/basic_card.dart';
import '../../../common/widgets/image/random_circle_image.dart';

class SearchManagementView extends StatelessWidget {
  const SearchManagementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBody(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Utils.highPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Utils.lowPadding,
              ),
              BasicCard(
                title: "Volkan Ket",
                subtitle: "Flutter Developer",
                description: "Flutter ile ilgili staj " * 5,
                profileImage: const RandomCircleImage(),
                goToCardDescription: true,
                onTap: () {},
              ),
              SizedBox(
                height: Utils.lowPadding,
              ),
              BasicCard(
                title: "Merve Demirtaş",
                subtitle: "Tasarımcı",
                description: "Figma ile harika tasarımlar yapabiliyorum " * 3,
                profileImage: const RandomCircleImage(),
                goToCardDescription: true,
                onTap: () {},
              ),
              SizedBox(
                height: Utils.lowPadding,
              ),
              BasicCard(
                title: "Baki Baran Özel",
                subtitle: "Frontend Developer",
                description: "Frontendim çok iyi " * 5,
                profileImage: const RandomCircleImage(),
                goToCardDescription: true,
                onTap: () {},
              ),
              SizedBox(
                height: Utils.lowPadding,
              ),
              BasicCard(
                title: "Hanifi Can Seven",
                subtitle: "Backend Developer",
                description: "Php ile Mükkemmel Siteler Yapabilirim" * 7,
                profileImage: const RandomCircleImage(),
                goToCardDescription: true,
                onTap: () {},
              ),
              SizedBox(
                height: Utils.lowPadding,
              ),
              BasicCard(
                title: "Utku Göneş",
                subtitle: "Tercuman",
                profileImage: const RandomCircleImage(),
                goToCardDescription: true,
                onTap: () {},
              ),
              SizedBox(
                height: Utils.lowPadding,
              ),
              BasicCard(
                title: "Sude Taşoyan",
                subtitle: "Gazeteci",
                profileImage: const RandomCircleImage(),
                goToCardDescription: true,
                onTap: () {},
              ),
              SizedBox(
                height: Utils.veryVeryHighPadding,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
