import 'package:flutter/material.dart';
import 'package:paper_shares/core/core.dart';

typedef IntCallback = void Function();

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final IntCallback onButtonPressed;

  const ButtonWidget({Key key, this.buttonText, this.onButtonPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: TextButton.styleFrom(
          primary: AppColors.text,
        ),
        onPressed: () {
          onButtonPressed();
        },
        child: SizedBox.fromSize(
          size: const Size(312, 40),
          child: Center(
              child: Text(
            buttonText,
            style: AppTextStyles.buttonText,
          )),
        ));
  }
}
