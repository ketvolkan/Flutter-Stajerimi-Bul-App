import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/constants/app_constants.dart';
import 'filter_bottom_sheet_controller.dart';

import '../../buttons/custom_text_button.dart';
import '../../../../../../core/models/filter_models/filter_model.dart';
import '../../../../../../core/utils/utils.dart';

class FilterBottomSheet extends StatelessWidget {
  final bool showJobTitle;

  final FilterModel? initialValues;
  const FilterBottomSheet({Key? key, this.showJobTitle = true, this.initialValues}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterModelBottomSheetController>(
        init: FilterModelBottomSheetController()
          ..filterModel = FilterModel(start: initialValues?.start ?? DateTime.now(), end: initialValues?.end ?? DateTime.now()),
        builder: (controller) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: Utils.highPadding) + EdgeInsets.only(bottom: Utils.normalPadding),
            child: Card(
              color: Get.theme.appBarTheme.titleTextStyle!.color ?? Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Utils.veryHighBorderRadius)),
              child: Container(
                padding: EdgeInsets.all(Utils.highPadding),
                width: Get.size.width,
                height: showJobTitle ? Get.size.height / 2.5 : Get.size.height / 3,
                child: Form(
                  child: ListView(
                    children: [
                      DateTimePicker(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Get.theme.primaryColor)),
                          hintText: AppConstants.startDateFilter,
                          icon: Icon(Icons.event, color: Get.theme.primaryColor),
                        ),
                        type: DateTimePickerType.date,
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                        initialDate: DateTime.now(),
                        onChanged: (val) {
                          controller.filterModel!.start = DateTime.parse(val);
                        },
                      ),
                      DateTimePicker(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Get.theme.primaryColor)),
                          hintText: AppConstants.endDateFilter,
                          icon: Icon(Icons.event, color: Get.theme.primaryColor),
                        ),
                        type: DateTimePickerType.date,
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                        initialDate: DateTime.now(),
                        onChanged: (val) {
                          controller.filterModel!.end = DateTime.parse(val);
                        },
                      ),
                      showJobTitle
                          ? TextField(
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Get.theme.primaryColor)),
                                hintText: AppConstants.jobTitleFilter,
                                icon: Icon(Icons.person_pin_circle_outlined, color: Get.theme.primaryColor),
                              ),
                              onChanged: (val) {
                                controller.filterModel!.jobTitle = val;
                              },
                            )
                          : const SizedBox(),
                      SizedBox(
                        height: Utils.highPadding,
                      ),
                      CustomTextButton(
                        text: AppConstants.submitFilter,
                        onTap: () {
                          controller.saveFilterButton();
                        },
                        backgroundColor: Get.theme.primaryColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
