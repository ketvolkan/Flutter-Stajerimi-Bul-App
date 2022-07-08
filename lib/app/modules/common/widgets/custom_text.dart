import 'package:flutter/material.dart';

import '../../../../../core/utils/utils.dart';

class CustomText extends StatelessWidget {
  final String? text;
  double? textSize;
  final Color? textColor;
  final bool underlined;
  final bool lineThrough;
  final bool bold;
  final bool centerText;
  final TextOverflow? textOverflow;
  final int? maxlines;
  CustomText(
    this.text, {
    Key? key,
    this.textColor,
    this.underlined = false,
    this.bold = false,
    this.centerText = false,
    this.textOverflow,
    this.maxlines,
    this.lineThrough = false,
  }) : super(key: key) {
    textSize = Utils.normalTextSize;
  }
  CustomText.extraLow(
    this.text, {
    Key? key,
    this.textColor,
    this.underlined = false,
    this.bold = false,
    this.centerText = false,
    this.textOverflow,
    this.maxlines,
    this.lineThrough = false,
  }) : super(key: key) {
    textSize = Utils.extraLowTextSize;
  }
  CustomText.low(
    this.text, {
    Key? key,
    this.textColor,
    this.underlined = false,
    this.bold = false,
    this.centerText = false,
    this.textOverflow,
    this.maxlines,
    this.lineThrough = false,
  }) : super(key: key) {
    textSize = Utils.lowTextSize;
  }
  CustomText.high(
    this.text, {
    Key? key,
    this.textColor,
    this.underlined = false,
    this.bold = false,
    this.centerText = false,
    this.textOverflow,
    this.maxlines,
    this.lineThrough = false,
  }) : super(key: key) {
    textSize = Utils.highTextSize;
  }
  CustomText.extraHigh(
    this.text, {
    Key? key,
    this.textColor,
    this.underlined = false,
    this.bold = false,
    this.centerText = false,
    this.textOverflow,
    this.maxlines,
    this.lineThrough = false,
  }) : super(key: key) {
    textSize = Utils.extraHighTextSize;
  }
  CustomText.custom(
    this.text, {
    Key? key,
    this.textColor,
    this.underlined = false,
    this.bold = false,
    this.centerText = false,
    this.textOverflow,
    this.textSize,
    this.maxlines,
    this.lineThrough = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: TextStyle(
        fontSize: textSize ?? Utils.normalTextSize,
        color: textColor ?? Colors.black,
        decoration: underlined
            ? TextDecoration.underline
            : lineThrough
                ? TextDecoration.lineThrough
                : null,
        fontWeight: bold ? FontWeight.bold : null,
      ),
      textAlign: centerText ? TextAlign.center : null,
      overflow: textOverflow,
      maxLines: maxlines,
    );
  }
}
