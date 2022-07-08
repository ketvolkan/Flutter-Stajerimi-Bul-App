import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/constants/app_constants.dart';
import '../../../../../../core/models/filter_models/filter_model.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/variables/icons.dart';
import '../../buttons/custom_text_button.dart';
import 'filter_bottom_sheet_controller.dart';

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
        return Card(
          color: Get.theme.appBarTheme.titleTextStyle!.color ?? Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(Utils.extraHighRadius))),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(Utils.highPadding),
              child: SizedBox(
                width: Get.size.width,
                height: showJobTitle ? Get.size.height / 3.5 : Get.size.height / 4.3,
                child: Column(
                  children: [
                    startDateWidget(controller),
                    endDatePicker(controller),
                    showJobTitle ? jobTitleTextField(controller) : const SizedBox(),
                    SizedBox(height: Utils.highPadding),
                    saveButton(controller)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  DateTimePicker startDateWidget(FilterModelBottomSheetController controller) {
    return DateTimePicker(
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Get.theme.primaryColor)),
        hintText: AppConstants.startDateFilter.tr,
        icon: Icon(AppIcons.dateIcon, color: Get.theme.primaryColor),
      ),
      type: DateTimePickerType.date,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
      onChanged: (val) => controller.filterModel!.start = DateTime.parse(val),
    );
  }

  DateTimePicker endDatePicker(FilterModelBottomSheetController controller) {
    return DateTimePicker(
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Get.theme.primaryColor)),
        hintText: AppConstants.endDateFilter.tr,
        icon: Icon(AppIcons.dateIcon, color: Get.theme.primaryColor),
      ),
      type: DateTimePickerType.date,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
      onChanged: (val) => controller.filterModel!.end = DateTime.parse(val),
    );
  }

  TextField jobTitleTextField(FilterModelBottomSheetController controller) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Get.theme.primaryColor)),
        hintText: AppConstants.jobTitleFilter.tr,
        icon: Icon(AppIcons.jobIcon, color: Get.theme.primaryColor),
      ),
      onChanged: (val) => controller.filterModel!.jobTitle = val,
    );
  }

  CustomTextButton saveButton(FilterModelBottomSheetController controller) {
    return CustomTextButton(
      text: AppConstants.submitFilter.tr,
      onTap: controller.saveFilterButton,
      textColor: Colors.white,
      backgroundColor: Get.theme.primaryColor,
    );
  }
}
