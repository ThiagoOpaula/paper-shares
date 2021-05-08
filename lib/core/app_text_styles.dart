import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle title = GoogleFonts.inter(
    color: AppColors.text,
    fontSize: 32,
    fontWeight: FontWeight.w800,
  );

  static final TextStyle inputText = GoogleFonts.inter(
    color: AppColors.text,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle forgotMessage = GoogleFonts.inter(
    color: AppColors.text,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle labelStyle = GoogleFonts.inter(
    color: AppColors.text,
    fontSize: 22,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle placeholder = GoogleFonts.inter(
    color: AppColors.placeholder,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
}
