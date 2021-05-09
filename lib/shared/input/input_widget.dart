import 'package:flutter/material.dart';
import 'package:paper_shares/core/app_text_styles.dart';
import 'package:paper_shares/core/core.dart';

typedef void IntCallback(String email);

class InputWidget extends StatelessWidget {
  final String label;
  final String placeholder;
  final bool hideText;
  final IntCallback onSonChanged;

  InputWidget(
      {Key key, this.label, this.placeholder, this.hideText, this.onSonChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyles.placeholder,
      obscureText: hideText,
      onChanged: (value) {
        onSonChanged(value);
      },
      decoration: InputDecoration(
        suffixIcon: hideText ? Icon(Icons.lock) : Icon(Icons.person),
        hintText: placeholder,
        hintStyle: AppTextStyles.placeholder,
        fillColor: AppColors.inputBackground,
        filled: true,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.inputBackground,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.inputBorder),
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: label,
        labelStyle: AppTextStyles.labelStyle,
      ),
    );
  }
}
