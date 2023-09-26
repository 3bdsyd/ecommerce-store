import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/category/get_view_categories.dart';
import '../widget/favorite/title_widget.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        children: [
          SizedBox(
            height: 12.h,
          ),
          const TitleWidget(favoriteScreen: true),
          SizedBox(
            height: 25.h,
          ),
          const Expanded(
            child: GetViewCategory(
              isPageFavorite: true,
            ),
          ),
        ],
      ),
    );
  }
}
