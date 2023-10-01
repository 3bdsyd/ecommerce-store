import 'package:ecommerce_store/core/constant/package_const.dart';

class OnBoarding extends GetView<OnBoardingControllerImp> {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller.pageController,
                  onPageChanged: (value) {
                    controller.onChangeOnBoardingPag(value);
                  },
                  itemCount: onBoardingList.length,
                  itemBuilder: (BuildContext context, _) {
                    return const Column(
                      children: [
                        LogoTitle(),
                        Expanded(
                          child: SliderBodyText(),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const Expanded(
                flex: 1,
                child: ButtonStarted(),
              ),
              SizedBox(
                height: 5.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}

