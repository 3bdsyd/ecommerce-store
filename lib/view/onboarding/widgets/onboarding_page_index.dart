import 'package:ecommerce_store/core/constants/app_package.dart';

class OnBoardingPageIndex extends GetView<OnBoardingControllerImp> {
  const OnBoardingPageIndex({super.key});

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
                  width: controller.measurementWidth(index),
                  height: 4.h,
                  duration: const Duration(milliseconds: 600),
                  decoration: BoxDecoration(
                    color: controller.activeMeasurement(index),
                    borderRadius: BorderRadius.circular(5),
                  ),
                );
              },
            ),
          )
        ],
      ),
    ).animate().fade().slideX(
          begin: 1,
          duration: const Duration(milliseconds: 800),
        );
  }
}
