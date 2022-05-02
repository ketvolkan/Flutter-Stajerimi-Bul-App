import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/style.dart';

class BasicCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? description;
  final DateTime? createdAt;
  final bool goToCardDescription;
  final Widget? profileImage;
  final bool backArrow;
  final Function()? onTap;

  const BasicCard({
    Key? key,
    required this.title,
    this.description,
    this.createdAt,
    this.subtitle,
    this.onTap,
    this.goToCardDescription = false,
    this.profileImage,
    this.backArrow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Utils.veryHighBorderRadius),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(Utils.highPadding),
              width: Get.size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  backArrow
                      ? Expanded(flex: 1, child: Icon(Icons.arrow_back_ios, color: Get.theme.primaryColor))
                      : const SizedBox(),
                  profileImage != null ? Expanded(flex: 1, child: profileImage!) : const SizedBox(),
                  SizedBox(width: Utils.lowPadding),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: AppTextStyle.basicCardTitleTextStyle),
                        subtitle != null ? Text(subtitle!, style: AppTextStyle.basicCardSubTitleTextStyle) : const SizedBox(),
                      ],
                    ),
                  ),
                  goToCardDescription
                      ? Expanded(flex: 1, child: Center(child: Icon(Icons.arrow_forward_ios, color: Get.theme.primaryColor)))
                      : const SizedBox()
                ],
              ),
            ),
            if (description != null || createdAt != null)
              Container(
                padding: EdgeInsets.all(Utils.highPadding),
                width: Get.size.width,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Get.theme.primaryColor,
                    blurRadius: Utils.lowBorderRadius,
                  ),
                ], color: Get.theme.primaryColor, borderRadius: BorderRadius.all(Radius.circular(Utils.highBorderRadius))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    description != null
                        ? Text(
                            description!,
                            style: AppTextStyle.basicCardDescriptionTextStyle,
                          )
                        : const SizedBox(),
                    createdAt != null
                        ? Container(
                            padding: description != null ? EdgeInsets.only(top: Utils.normalPadding) : EdgeInsets.zero,
                            alignment: description != null ? Alignment.centerLeft : Alignment.center,
                            child: Text(
                              createdAt.toString().substring(0, 10),
                              style: AppTextStyle.basicCardTimeTextStyle,
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              )
          ],
        ),
        elevation: 8,
        shadowColor: Get.theme.primaryColorDark,
      ),
    );
  }
}
