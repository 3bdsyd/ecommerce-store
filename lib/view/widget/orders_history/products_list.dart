import 'package:ecommerce_store/core/constant/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/class/platform.dart';
import 'image_name_cart_order.dart';
import 'left_cart_order.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = Platform.getSizeWidth(context);
    return Expanded(
      child: ScrollConfiguration(
        behavior: MaterialScrollBehavior().copyWith(overscroll: false),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: numberOfCardsInLine(sizeWidth),
            childAspectRatio: sizeOfCardsInLine(sizeWidth),
            mainAxisSpacing: 5.h,
          ),
          itemCount: 20,
          // physics: const BouncingScrollPhysics(
          //   parent: AlwaysScrollableScrollPhysics(),
          // ),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: ColorConst.nineColor,
              elevation: .2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 10.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (context) {
                      return const LeftCartOrder();
                    }),
                    const ImageNameCartOrder()
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  int numberOfCardsInLine(sizeWidth) {
    return sizeWidth < 800
        ? 1
        : sizeWidth < 1200
            ? 2
            : 3;
  }

  double sizeOfCardsInLine(sizeWidth) {
    return sizeWidth < 320
        ? 2
        : sizeWidth < 630
            ? 2.4
            : sizeWidth < 800
                ? 3
                : sizeWidth < 1100
                    ? 2
                    : 1.8;
  }
}
