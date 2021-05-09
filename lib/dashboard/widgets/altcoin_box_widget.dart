import 'package:flutter/material.dart';
import 'package:papershare/core/core.dart';

class AltcoinBox extends StatelessWidget {
  const AltcoinBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.inputBackground),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('coin', style: AppTextStyles.altcoinBox),
          Icon(
            Icons.bookmark_outline,
            color: AppColors.icon,
          ),
          Column(
            children: [
              Text('328.545', style: AppTextStyles.altcoinBox),
              Text('-56%', style: AppTextStyles.altcoinBox)
            ],
          )
        ],
      ),
    );
  }
}
