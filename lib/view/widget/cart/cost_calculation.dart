import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';

class CostCalculation extends StatelessWidget {
  const CostCalculation({
    super.key,
    required this.label,
    required this.cost,
    required this.isTotal,
  });
  final String label;
  final String cost;
  final bool isTotal;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            label,
            style: isTotal
                ? context.textTheme.bodyMedium!.copyWith(fontSize: 18)
                : context.textTheme.bodySmall!.copyWith(
                    color: ColorConst.thirdColor,
                    fontSize: 15,
                  ),
          ),
        ),
        const Spacer(),
        Expanded(
          child: Text(
            '\$ $cost',
            style: isTotal
                ? context.textTheme.bodyMedium!.copyWith(fontSize: 18)
                : context.textTheme.bodySmall!.copyWith(
                    color: ColorConst.thirdColor,
                    fontSize: 15,
                  ),
          ),
        ),
      ],
    );
  }
}
