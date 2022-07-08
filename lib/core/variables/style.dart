import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';

class AppTextStyle {
  //? AppBar Style
  static TextStyle appBarTextStyle =
      GoogleFonts.getFont('Josefin Sans').copyWith(fontSize: Utils.extraHighTextSize, fontWeight: Utils.boldFontWeight);
}
