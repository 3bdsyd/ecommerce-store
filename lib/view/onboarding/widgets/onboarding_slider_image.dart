import 'package:ecommerce_store/core/constants/app_package.dart';

class OnBoardingSliderImageWidget extends StatelessWidget {
  final int index;
  const OnBoardingSliderImageWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.secondaryColor.withOpacity(.3),
                    blurRadius: 5,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(200),
                  topRight: Radius.circular(200),
                ),
                child: Image.asset(
                  onBoardingList[index].bodyImageTow,
                  width: 200.w,
                  height: 250.h,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ).animate().fade().slideX(
                begin: -1,
                duration: const Duration(milliseconds: 500),
              ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.secondaryColor.withOpacity(.3),
                    blurRadius: 5,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
                child: Image.asset(
                  onBoardingList[index].bodyImageOne,
                  width: 200.w,
                  height: 250.h,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ).animate().fade().slideX(
                begin: 1,
                duration: const Duration(milliseconds: 500),
              ),
        ],
      ),
    );
  }
}
