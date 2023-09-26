import 'package:ecommerce_store/view/widget/information_personal/reasons_return.dart';
import 'package:ecommerce_store/view/widget/information_personal/top_cart_return.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../../../core/class/platform.dart';
import '../../../core/constant/color_const.dart';
import 'comments_return.dart';
import 'note_return.dart';

class CartReturn extends StatelessWidget {
  const CartReturn({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = Platform.getSizeWidth(context);
    return Expanded(
      child: AnimationLimiter(
        child: GridView.builder(
          itemCount: 15,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: sizeWidth < 800 ? 1 : 2,
            childAspectRatio: sizeOfCardsInLine(sizeWidth),
          ),
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredGrid(
              columnCount: sizeWidth < 800 ? 1 : 2,
              position: index,
              duration: const Duration(milliseconds: 1500),
              child: ScaleAnimation(
                duration: const Duration(milliseconds: 1500),
                curve: Curves.fastLinearToSlowEaseIn,
                child: FadeInAnimation(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: .2,
                    color: ColorConst.nineColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 10.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TopCartReturn(),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            'Why are you returning this',
                            style: context.textTheme.labelMedium!.copyWith(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          const ReasonsReturn(),
                          SizedBox(
                            height: 15.h,
                          ),
                          const CommentsReturn(),
                          SizedBox(
                            height: 10.h,
                          ),
                          const NoteReturn()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  double sizeOfCardsInLine(sizeWidth) {
    return sizeWidth < 300
        ? 0.55
        : sizeWidth < 320
            ? 0.6
            : sizeWidth < 380
                ? 0.65
                : sizeWidth < 410
                    ? 0.75
                    : sizeWidth < 500
                        ? 0.8
                        : sizeWidth < 600
                            ? 1
                            : sizeWidth < 800
                                ? 1.4
                                : sizeWidth < 900
                                    ? .9
                                    : sizeWidth < 1000
                                        ? 1
                                        : sizeWidth < 1100
                                            ? 1.1
                                            : sizeWidth < 1200
                                                ? 1.15
                                                : sizeWidth < 1300
                                                    ? 1.18
                                                    : 1.25;
  }
}
