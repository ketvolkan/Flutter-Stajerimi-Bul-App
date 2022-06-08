import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../custom_text.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/icons.dart';
import '../../../../../core/variables/style.dart';

class BasicCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? description;
  final DateTime? createdAt;
  final bool goToCardDescription;
  final Widget? profileImage;
  final bool backArrow;
  final int descriptionMaxLines;
  final Function()? onTap;
  final IconData? customLeadingIcon;
  final Widget? customLeadingWidget;

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
    this.descriptionMaxLines = 3,
    this.customLeadingIcon,
    this.customLeadingWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Utils.veryHighBorderRadius)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(Utils.highPadding),
              child: SizedBox(
                width: Get.size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        backArrow ? Icon(AppIcons.basicCardGoToBack, color: Get.theme.primaryColor) : const SizedBox(),
                        profileImage != null
                            ? FittedBox(child: SizedBox.square(dimension: Get.size.width * 0.15, child: profileImage!))
                            : const SizedBox(),
                        SizedBox(width: Utils.normalPadding),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(title, style: AppTextStyle.basicCardTitleTextStyle),
                            subtitle != null
                                ? CustomText(subtitle!, style: AppTextStyle.basicCardSubTitleTextStyle)
                                : const SizedBox(),
                          ],
                        ),
                      ],
                    ),
                    customLeadingWidget ?? const SizedBox(),
                    goToCardDescription
                        ? Center(
                            child: Icon(customLeadingIcon ?? AppIcons.basicCardGoToCardDescriptionIcon,
                                color: Get.theme.primaryColor))
                        : const SizedBox()
                  ],
                ),
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
                        ? CustomText(
                            description!,
                            style: AppTextStyle.basicCardDescriptionTextStyle,
                            maxLines: descriptionMaxLines,
                            overflow: TextOverflow.ellipsis,
                          )
                        : const SizedBox(),
                    createdAt != null
                        ? Container(
                            padding: description != null ? EdgeInsets.only(top: Utils.normalPadding) : EdgeInsets.zero,
                            alignment: description != null ? Alignment.centerLeft : Alignment.center,
                            child: CustomText(createdAt.toString().substring(0, 10), style: AppTextStyle.basicCardTimeTextStyle),
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
