import 'package:ecommerce_store/core/constants/app_package.dart';

class ButtonOrderDetails extends StatelessWidget {
  const ButtonOrderDetails({super.key, required this.detailsButton});
  final bool detailsButton;
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
              detailsButton ? AppColor.primaryColor : AppColor.thirdColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Text(
              detailsButton ? 'See Order details' : 'Continue Shopping',
              style: context.textTheme.labelLarge,
            ),
            detailsButton
                ? SvgPicture.asset(
                    AppIcon.fromFieldImageLogIn,
                    width: 28.w,
                    fit: BoxFit.scaleDown,
                  )
                : Container(
                    width: 0,
                  ),
          ],
        ),
      ),
    );
  }
}
