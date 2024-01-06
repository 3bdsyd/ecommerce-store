import 'package:ecommerce_store/core/constants/app_package.dart';

class OnBoardingPageViewWidget extends GetView<OnBoardingControllerImp> {
  const OnBoardingPageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        onPageChanged: (value) => controller.onChangePage(value),
        itemCount: onBoardingList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              const OnBoardingLogoTitleWidget(),
              OnBoardingSliderWidget(index: index),
            ],
          );
        },
      ),
    );
  }
}
