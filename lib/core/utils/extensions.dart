import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'utils.dart';

enum ToastStyle { Success, Error, Normal, Warning }

extension CustomToastExtension on GetInterface {
  Future<bool?> showToast(String text, {ToastStyle? toastStyle = ToastStyle.Normal}) {
    late Color backgroundColor;
    late Color textColor;
    switch (toastStyle) {
      case ToastStyle.Success:
        backgroundColor = Colors.green;
        textColor = Colors.white;
        break;
      case ToastStyle.Error:
        backgroundColor = Colors.red;
        textColor = Colors.white;
        break;
      case ToastStyle.Normal:
        backgroundColor = Colors.orange;
        textColor = Colors.white;
        break;
      case ToastStyle.Warning:
        backgroundColor = Colors.blue;
        textColor = Colors.white;
        break;
      default:
        backgroundColor = const Color(0xFFD1CDCD);
        textColor = Colors.black;
    }
    return Future.microtask(
      () => Fluttertoast.showToast(
        msg: text,
        backgroundColor: backgroundColor,
        textColor: textColor,
        fontSize: Utils.lowTextSize,
        gravity: ToastGravity.BOTTOM,
      ),
    );
  }
}
