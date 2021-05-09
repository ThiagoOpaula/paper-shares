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
    color: AppColors.forgotMessage,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle labelStyle = GoogleFonts.inter(
    color: AppColors.text,
    fontSize: 22,
  );

  static final TextStyle placeholder = GoogleFonts.inter(
    color: AppColors.placeholder,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle buttonText = GoogleFonts.inter(
    color: AppColors.buttonText,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle altcoinBox = GoogleFonts.inter(
    color: AppColors.altcoinBox,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
}
