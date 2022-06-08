import 'package:flutter/material.dart';
import '../../../../core/utils/utils.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final bool centerText;
  final TextOverflow? overflow;
  final double? textSize;
  final EdgeInsets? padding;
  final int? maxLines;
  final Color? color;
  const CustomText(
    this.text, {
    Key? key,
    this.style,
    this.centerText = false,
    this.textSize,
    this.overflow,
    this.padding,
    this.maxLines,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text,
        maxLines: maxLines,
        style: style is TextStyle
            ? style?.copyWith(fontSize: textSize ?? style!.fontSize, color: color ?? style!.color)
            : TextStyle(fontSize: textSize ?? Utils.textSizeNormal, color: color ?? Colors.black),
        textAlign: centerText ? TextAlign.center : TextAlign.left,
        overflow: overflow,
      ),
    );
  }
}
