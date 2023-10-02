import 'package:ecommerce_store/core/constant/package_const.dart';

class PageIndex extends GetView<OnBoardingControllerImp> {
  const PageIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.w),
      child: Row(
        children: [
          ...List.generate(
            onBoardingList.length,
            (index) => GetBuilder<OnBoardingControllerImp>(
              builder: (controller) {
                return AnimatedContainer(
                  margin: EdgeInsets.only(left: 10.w),
                  width: measurementWidth(index),
                  height: 4.h,
                  duration: const Duration(milliseconds: 600),
                  decoration: BoxDecoration(
                    color: activeMeasurement(index),
                    borderRadius: BorderRadius.circular(5),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  double measurementWidth(int index) {
    if (controller.currentPage == index) {
      return 25.w;
    } else if (controller.currentPage - index == 1 ||
        index - controller.currentPage == 1) {
      return 15.w;
    } else {
      return 10.w;
    }
  }

  Color activeMeasurement(int index) {
    return controller.currentPage == index
        ? ColorConst.primaryColor
        : ColorConst.secondaryColor;
  }
}
