import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/icons.dart';
import '../custom_text.dart';

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
  final double? borderRadius;
  final IconData? customLeadingIcon;
  final Widget? customLeadingWidget;
  final EdgeInsets? cardOutPadding;
  const BasicCard({
    Key? key,
    this.borderRadius,
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
    this.cardOutPadding,
    this.customLeadingWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: cardOutPadding ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap ?? () {},
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius ?? Utils.normalRadius)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(Utils.highPadding),
                child: SizedBox(
                  width: Get.size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      baseSideRow(),
                      customLeadingWidget ?? const SizedBox(),
                      goToCardDescription ? goToDescriptionIcon() : const SizedBox()
                    ],
                  ),
                ),
              ),
              if (description != null || createdAt != null) descriptionAndCreatedAt()
            ],
          ),
          elevation: 8,
          shadowColor: Get.theme.primaryColorDark,
        ),
      ),
    );
  }

  Row baseSideRow() {
    return Row(
      children: [
        backArrow ? Icon(AppIcons.basicCardGoToBack, color: Get.theme.primaryColor) : const SizedBox(),
        profileImage != null ? profileImageWidget() : const SizedBox(),
        SizedBox(width: Utils.normalPadding),
        titleAndSubtitle(),
      ],
    );
  }

  FittedBox profileImageWidget() => FittedBox(child: SizedBox.square(dimension: Get.size.width * 0.1, child: profileImage!));

  Column titleAndSubtitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          title,
          minFontSize: 5,
          maxFontSize: 12,
        ),
        subtitle != null ? CustomText.low(subtitle!) : const SizedBox(),
      ],
    );
  }

  Center goToDescriptionIcon() {
    return Center(child: Icon(customLeadingIcon ?? AppIcons.basicCardGoToCardDescriptionIcon, color: Get.theme.primaryColor));
  }

  Container descriptionAndCreatedAt() {
    return Container(
      padding: EdgeInsets.all(Utils.highPadding),
      width: Get.size.width,
      decoration: BoxDecoration(
        color: Get.theme.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(Utils.normalRadius)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          description != null ? CustomText(description!, textColor: Colors.white) : const SizedBox(),
          createdAt != null
              ? Container(
                  padding: description != null ? EdgeInsets.only(top: Utils.normalPadding) : EdgeInsets.zero,
                  alignment: description != null ? Alignment.centerLeft : Alignment.center,
                  child: CustomText(createdAt.toString().substring(0, 10)),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
