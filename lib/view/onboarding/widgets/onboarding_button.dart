import 'package:ecommerce_store/core/constants/app_package.dart';

class OnBoardingButtonWidget extends GetView<OnBoardingControllerImp> {
  const OnBoardingButtonWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const OnBoardingPageIndex(),
          SizedBox(
            height: 40.h,
            child: ElevatedButton(
              onPressed: () => controller.nextPage(),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Get Started',
                    style: context.textTheme.bodyMedium!.copyWith(
                      color: AppColor.eleventhColor,
                    ),
                  ),
                  SvgPicture.asset(
                    AppIcon.onBoardingStart,
                    width: 20.w,
                    fit: BoxFit.scaleDown,
                  ),
                ],
              ),
            ),
          ).animate().fade().slideX(
                begin: -1,
                duration: const Duration(milliseconds: 800),
              ),
        ],
      ),
    );
  }
}
