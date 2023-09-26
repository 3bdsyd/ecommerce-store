import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';

class LeftCartOrder extends StatelessWidget {
  const LeftCartOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'TODAY, 12:10 AM',
            style: context.textTheme.titleLarge!.copyWith(fontSize: 16),
          ),
          Text(
            'Ranim Omar\nDamascus-Alkaid-srt.x\n, 28294\n+963 997555668',
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.bodySmall!.copyWith(
              color: ColorConst.thirdColor,
            ),
          ),
        ],
      ),
    );
  }
}
