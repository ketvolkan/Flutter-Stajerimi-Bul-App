import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/models/employee_models/employee_model.dart';

import '../../../../../../core/utils/utils.dart';
import '../../../../common/widgets/custom_text.dart';
import '../../../../common/widgets/image/random_circle_image.dart';

class CustomProfileTopCard extends StatelessWidget {
  final EmployeeModel employeeModel;
  const CustomProfileTopCard({
    Key? key,
    required this.employeeModel,
  }) : super(key: key);

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
                  AutoSizeText(
                    employeeModel.dateOfBirth ?? "",
                    minFontSize: 5,
                    maxFontSize: 12,
                    style: const TextStyle().copyWith(color: Colors.white),
                  ),
                  SizedBox(width: Utils.normalPadding),
                  AutoSizeText(
                    (employeeModel.adress ?? ""),
                    minFontSize: 2,
                    maxFontSize: 12,
                    style: const TextStyle().copyWith(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: Utils.normalPadding),
              FittedBox(child: CustomText(employeeModel.aboutMe, textColor: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
