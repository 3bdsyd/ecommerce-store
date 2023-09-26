import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/information_personal/details_information.dart';
import '../widget/information_personal/orientation_list.dart';

class MainInformation extends StatelessWidget {
  const MainInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: ListView(
        children: [
          SizedBox(
            height: 14.h,
          ),
          const DetailsInformation(),
          SizedBox(
            height: 22.h,
          ),
          const OrientationList(),
        ],
      ),
    );
  }
}
