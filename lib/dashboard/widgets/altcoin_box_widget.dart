import 'package:flutter/material.dart';
import 'package:paper_shares/core/core.dart';

class AltcoinBox extends StatelessWidget {
  const AltcoinBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.inputBackground),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('coin', style: AppTextStyles.altcoinBox),
            Row(
              children: [
                const Icon(
                  Icons.bookmark_outline,
                  color: AppColors.icon,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('328.545', style: AppTextStyles.altcoinBox),
                    Text('-56%', style: AppTextStyles.altcoinBox)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
