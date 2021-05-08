import 'package:flutter/material.dart';
import 'package:papershare/core/core.dart';
import 'package:papershare/shared/input/input_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: AppColors.background),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.icon,
                height: 130,
                width: 130,
              ),
              Text(
                'Paper Shares',
                style: AppTextStyles.title,
              ),
              InputWidget()
            ],
          ),
        ),
      ),
    );
  }
}
