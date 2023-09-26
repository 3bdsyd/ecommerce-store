import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class ButtonNavBar extends GetView<HomeControllerImp> {
  const ButtonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: ColorConst.primaryColor,
          width: 1,
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: <BottomNavigationBarItem>[
            buttonItems(image: ImageConst.imageVectorHome),
            buttonItems(image: ImageConst.imageVectorLove),
            buttonItems(image: ImageConst.imageVectorCart),
            buttonItems(image: ImageConst.imageVectorPerson),
          ],
          currentIndex: controller.currentPage.value < 4
              ? controller.currentPage.value
              : 2,
          onTap: (int index) {
            controller.currentPage.value < 4
                ? controller.changeCurrentPage(index)
                : index != 2
                    ? controller.changeCurrentPage(index)
                    : null;
          },
        ),
      ),
    );
  }

  BottomNavigationBarItem buttonItems({
    required image,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        image,
        colorFilter: ColorFilter.mode(
          ColorConst.thirdColor,
          BlendMode.srcIn,
        ),
      ),
      activeIcon: SvgPicture.asset(
        image,
        colorFilter: ColorFilter.mode(
          ColorConst.primaryColor,
          BlendMode.srcIn,
        ),
      ),
      label: '',
    );
  }
}
