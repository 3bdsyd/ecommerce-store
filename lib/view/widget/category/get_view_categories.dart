import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

import '../../../core/class/platform.dart';
import '../../../router/routes.dart';
import 'card_category.dart';

class GetViewCategory extends GetView<HomeControllerImp> {
  const GetViewCategory({super.key, required this.isPageFavorite});
  final bool isPageFavorite;
  @override
  Widget build(BuildContext context) {
    double sizeWidth = Platform.getSizeWidth(context);
    return Obx(
      () => AnimationLimiter(
        child: GridView.builder(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          itemCount: testPageFavorite(isPageFavorite),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: numberACart(sizeWidth),
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: .6,
          ),
          itemBuilder: (context, int index) {
            return AnimationConfiguration.staggeredGrid(
              columnCount: numberACart(sizeWidth),
              position: index,
              duration: const Duration(milliseconds: 2500),
              child: ScaleAnimation(
                duration: const Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                child: FadeInAnimation(
                  child: GestureDetector(
                    onTap: () {
                      controller.viewDetailsProduct(
                          controller.myCategoryList[index].id);
                      Get.toNamed(ScreenNames.detailsProduct);
                    },
                    child: CardCategory(
                      index: index,
                      isPageFavorite: isPageFavorite,
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

  int testPageFavorite(bool isPageFavorite) {
    return isPageFavorite
        ? controller.myCategoriesFavorite.length
        : controller.myCategoryList.length;
  }

  int numberACart(double sizeWidth) {
    return sizeWidth < 300
        ? 2
        : sizeWidth < 800
            ? 3
            : sizeWidth < 1000
                ? 4
                : 5;
  }
}
