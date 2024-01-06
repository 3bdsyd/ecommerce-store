import 'package:ecommerce_store/core/constants/app_package.dart';

class ButtonOrderFailed extends StatelessWidget {
  const ButtonOrderFailed({super.key, required this.reviewButton});
  final bool reviewButton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // Get.offAll(
          //   () => const Home(),
          //   // transition: Transition.fadeIn,
          //   // duration: Duration(milliseconds: 500),
          //   binding: HomeBinding(),
          // );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor:
              reviewButton ? AppColor.primaryColor : AppColor.thirdColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            reviewButton
                ? SvgPicture.asset(
                    AppIcon.imagesLongLeft,
                    width: 28.w,
                    fit: BoxFit.scaleDown,
                  )
                : Container(
                    width: 0,
                  ),
            Text(
              reviewButton ? 'Review Payment Method' : 'Please... I need Help',
              style: context.textTheme.labelLarge,
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
