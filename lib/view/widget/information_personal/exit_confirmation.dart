import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color.dart';

class ExitConfirmation extends StatelessWidget {
  const ExitConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Divider(color: AppColor.thirdColor),
          VerticalDivider(
            color: AppColor.thirdColor,
            indent: 8,
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Yes',
                  style: context.textTheme.titleLarge!
                      .copyWith(fontSize: 17, fontWeight: FontWeight.w400),
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Text(
                    'Cancel',
                    style: context.textTheme.titleLarge!.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
