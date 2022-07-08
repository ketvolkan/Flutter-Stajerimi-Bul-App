import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../custom_text.dart';

class CustomToggleButton extends StatelessWidget {
  final bool current;
  final String firstText;
  final String secondText;
  final IconData firstIcon;
  final IconData secondIcon;
  final EdgeInsets? padding;
  final Function(bool val) onChanged;
  const CustomToggleButton({
    Key? key,
    required this.current,
    required this.onChanged,
    this.padding,
    required this.firstText,
    required this.secondText,
    required this.firstIcon,
    required this.secondIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: SizedBox(
        width: Get.size.width / 3.75,
        child: FittedBox(
          child: AnimatedToggleSwitch<bool>.dual(
            current: current,
            first: false,
            second: true,
            dif: Get.size.width / 8,
            borderColor: Colors.transparent,
            borderWidth: Get.size.width / 30,
            height: Get.size.width / 5.5,
            onChanged: onChanged,
            colorBuilder: (b) => Get.theme.primaryColor,
            iconBuilder: (value) => value ? Icon(firstIcon) : Icon(secondIcon),
            textBuilder: (value) => value
                ? Center(child: CustomText(firstText, textColor: Get.theme.primaryColor))
                : Center(child: CustomText(secondText, textColor: Get.theme.primaryColor)),
          ),
        ),
      ),
    );
  }
}
