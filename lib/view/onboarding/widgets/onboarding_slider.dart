import 'package:ecommerce_store/core/constants/app_package.dart';

class OnBoardingSliderWidget extends StatelessWidget {
  final int index;
  const OnBoardingSliderWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          OnBoardingSliderImageWidget(index: index),
          const CustomVertical(height: 20),
          Text(
            onBoardingList[index].bodyText,
            style: context.textTheme.bodyLarge!.copyWith(
              color: AppColor.darkColor,
            ),
            textAlign: TextAlign.center,
          ).animate().fade().slideY(
                begin: -1,
                duration: const Duration(milliseconds: 600),
              ),
        ],
      ),
    );
  }
}
