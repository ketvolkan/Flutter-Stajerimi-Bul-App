import 'package:flutter/material.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../core/variables/color.dart';

class BasicCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? description;
  final DateTime? createdAt;
  final bool goToCardDescription;
  final Widget? profileImage;

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
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  profileImage != null ? Expanded(flex: 1, child: profileImage!) : const SizedBox(),
                  SizedBox(width: Utils.lowPadding),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: TextStyle(color: Theme.of(context).primaryColorDark)),
                        subtitle != null
                            ? Text(subtitle!, style: TextStyle(color: Theme.of(context).primaryColorDark.withOpacity(0.50)))
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  goToCardDescription
                      ? Expanded(
                          flex: 1, child: Center(child: Icon(Icons.arrow_forward_ios, color: Theme.of(context).primaryColor)))
                      : const SizedBox()
                ],
              ),
            ),
            if (description != null || createdAt != null)
              Container(
                padding: EdgeInsets.all(Utils.highPadding),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).primaryColor,
                        blurRadius: Utils.lowBorderRadius,
                      ),
                    ],
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(Utils.highBorderRadius))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    description != null
                        ? Text(
                            description!,
                            style: const TextStyle(color: AppColor.bottomNavBarItemColor),
                          )
                        : const SizedBox(),
                    createdAt != null
                        ? Container(
                            padding: description != null ? EdgeInsets.only(top: Utils.normalPadding) : EdgeInsets.zero,
                            alignment: description != null ? Alignment.centerLeft : Alignment.center,
                            child: Text(
                              createdAt.toString().substring(0, 10),
                              style: TextStyle(color: AppColor.bottomNavBarItemColor, fontWeight: Utils.boldFontWeight),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              )
          ],
        ),
        elevation: 8,
        shadowColor: Theme.of(context).primaryColorDark,
      ),
    );
  }
}
