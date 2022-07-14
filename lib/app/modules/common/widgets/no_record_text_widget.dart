import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';
import 'custom_text.dart';

class NoRecordText extends StatelessWidget {
  final String? text;
  final Function()? tryAgainTap;

  const NoRecordText({Key? key, this.text, this.tryAgainTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(text ?? "No Record"),
        if (tryAgainTap != null) SizedBox(height: Utils.lowPadding),
        if (tryAgainTap != null) InkWell(onTap: tryAgainTap, child: CustomText("Try Again", textColor: Colors.blue, bold: true))
      ],
    );
  }
}
