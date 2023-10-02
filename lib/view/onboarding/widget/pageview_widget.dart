import 'package:ecommerce_store/core/constant/package_const.dart';

class PageViewWidget extends GetView<OnBoardingControllerImp> {
  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller.pageController,
      onPageChanged: (value) => controller.onChangePage(value),
      itemCount: onBoardingList.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            LogoTitle(index: index),
            Expanded(
              child: SliderBodyText(index: index),
            ),
          ],
        );
      },
    );
  }
}
