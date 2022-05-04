import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stajyerimibul/core/constants/app_constants.dart';
import 'package:stajyerimibul/core/variables/icons.dart';

class CustomJobSchoolListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? end;
  final String start;

  //TODO Apiden gelen verilere göre model Oluşturulacak
  const CustomJobSchoolListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    this.end,
    required this.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(AppIcons.cvCardLeadingIcon, color: Get.theme.primaryColor),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(start), end != null ? Text(end!) : const Text(AppConstants.isNotComplated)],
      ),
    );
  }
}
