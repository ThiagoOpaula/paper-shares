import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:paper_shares/core/app_colors.dart';
import 'package:paper_shares/core/app_images.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: AppColors.background),
        child: Center(
          child: Image.asset(
            AppImages.icon,
            width: 220,
          ),
        ),
      ),
    );
  }
}
