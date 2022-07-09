import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stajyerimibul/core/models/employee_models/employee_model.dart';

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
                  CustomText(employeeModel.dateOfBirth, textColor: Colors.white),
                  SizedBox(width: Utils.normalPadding),
                  CustomText(employeeModel.adress, textColor: Colors.white),
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
