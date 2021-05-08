import 'package:flutter/material.dart';
import 'package:papershare/core/app_text_styles.dart';
import 'package:papershare/core/core.dart';
//import 'package:papershare/core/core.dart';

class InputWidget extends StatelessWidget {
  InputWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.inputBackground,
          borderRadius: BorderRadius.circular(10)),
      width: 312,
      height: 48,
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'insira o seu e-mail',
          hintStyle: AppTextStyles.placeholder,
          filled: true,
          fillColor: AppColors.inputBackground,
          labelText: 'Username',
          labelStyle: AppTextStyles.labelStyle,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.inputBorder),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
